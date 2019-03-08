** Design cell name: uW_VSensor
** 'nch' stands for N-channel
** 'pch' stands for P-channel
** 'mimcap' stands for MIM capacitor


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

** Cell name: NOR2

.subckt NOR2 a1 a2 zn vdd vss
m1 zn a2 vss vss nch l=350e-9 w=2e-6 m=1 nf=1 
m0 zn a1 vss vss nch l=350e-9 w=2e-6 m=1 nf=1 
m3 zn a2 net8 vdd pch l=300e-9 w=2e-6 m=2 nf=1 
m2 net8 a1 vdd vdd pch l=300e-9 w=2e-6 m=2 nf=1 
.ends NOR2

** End of subcircuit definition.

** Cell name: INV

.subckt INV i zn vdd vss
m1 zn i vss vss nch l=350e-9 w=1.5e-6 m=1 nf=1 
m3 zn i vdd vdd pch l=300e-9 w=2e-6 m=2 nf=1 
.ends INV

** End of subcircuit definition.

** Cell name: uW_VSensor

m18 r qb net20 vdd pch l=300e-9 w=3e-6 m=2 nf=1 
m17 s q net20 vdd pch l=300e-9 w=3e-6 m=2 nf=1 
m9 vbn iref vdd vdd pch l=2e-6 w=2e-6 m=2 nf=1 
m102 net046 net046 net32 net32 pch l=2e-6 w=4e-6 m=1 nf=2 
m10 net20 iref vdd vdd pch l=2e-6 w=2e-6 m=8 nf=1 
m12 vampgate net012 vdd vdd pch l=4e-6 w=2e-6 m=2 nf=1 
m8 iref iref vdd vdd pch l=2e-6 w=2e-6 m=1 nf=1 
m11 net012 net012 vdd vdd pch l=4e-6 w=2e-6 m=2 nf=1 
m103 net033 net033 net046 net046 pch l=2e-6 w=4e-6 m=1 nf=2
m105 gnd gnd net29 net29 pch l=2e-6 w=4e-6 m=1 nf=2 
m101 net32 net32 vdd vdd pch l=2e-6 w=4e-6 m=1 nf=2 
m104 net29 net29 net033 net033 pch l=2e-6 w=4e-6 m=1 nf=2 
m29 vbn vbn gnd gnd nch l=2e-6 w=2e-6 m=1 nf=1 
m28 s vampgate vc1 gnd nch l=1e-6 w=3e-6 m=1 nf=1 
m27 r vampgate vc0 gnd nch l=1e-6 w=3e-6 m=1 nf=1 
m26 net012 vampgate net42 gnd nch l=1e-6 w=3e-6 m=1 nf=1 
m25 vampgate vampgate net11 gnd nch l=1e-6 w=3e-6 m=1 nf=1 
m24 net42 net033 net10 gnd nch l=1e-6 w=5e-6 m=1 nf=1 
m23 net11 net11 net10 gnd nch l=1e-6 w=5e-6 m=1 nf=1 
m21 net10 vbn gnd gnd nch l=2e-6 w=2e-6 m=1 nf=1 
m20 vc1 q gnd gnd nch l=1.5e-6 w=2e-6 m=1 nf=1 
m19 vc0 qb gnd gnd nch l=1.5e-6 w=2e-6 m=1 nf=1
xc3 iref vdd mimcap lt=17e-6 wt=12e-6 mf=1
xc2 iref vdd mimcap lt=17e-6 wt=12e-6 mf=1 
xc0 vc0 gnd mimcap lt=4.79e-6 wt=4.79e-6 mf=1 
xc1 vc1 gnd mimcap lt=4.79e-6 wt=4.79e-6 mf=1 
xi7 s net38 net23 vdd gnd NOR2
xi8 r net23 net38 vdd gnd NOR2
xi13 q net051 vdd_pin gnd INV
xi9 net23 q vdd gnd INV
xi14 net051 qp vdd_pin gnd INV
xi15 qb net050 vdd_pin gnd INV
xi10 net38 qb vdd gnd INV
xi16 net050 qbp vdd_pin gnd INV
.END