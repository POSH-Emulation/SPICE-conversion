** Design cell name: uW_TSensor
** nch stands for N-channel
** pch stands for P-channel
** mimcap stands for MIM capacitor
** pdio stands for P-diode


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2


.subckt NOR2 a1 a2 zn vdd vss
m1 zn a2 vss vss nch l=350e-9 w=2e-6 m=1 nf=1 
m0 zn a1 vss vss nch l=350e-9 w=2e-6 m=1 nf=1 
m3 zn a2 net8 vdd pch l=300e-9 w=2e-6 m=2 nf=1 
m2 net8 a1 vdd vdd pch l=300e-9 w=2e-6 m=2 nf=1 
.ends NOR2

.subckt INV i zn vdd vss
m1 zn i vss vss nch l=350e-9 w=1.5e-6 m=1 nf=1 
m3 zn i vdd vdd pch l=300e-9 w=2e-6 m=2 nf=1 
.ends INV

m17 s q net20 vdd pch l=300e-9 w=3e-6 m=2 nf=1 
m7 iref iref vdd vdd pch l=4e-6 w=4e-6 m=1 nf=1 
m8 net20 iref vdd vdd pch l=4e-6 w=4e-6 m=2 nf=1 
m18 r qb net20 vdd pch l=300e-9 w=3e-6 m=2 nf=1 
m9 net15 iref vdd vdd pch l=4e-6 w=4e-6 m=2 nf=1 
d0 net023 gnd pdio area=175e-12 m=1
m6 vc1 q gnd gnd nch l=1.5e-6 w=2e-6 m=1 nf=1 
m5 vc0 qb gnd gnd nch l=1.5e-6 w=2e-6 m=1 nf=1 
m4 s net15 vc1 gnd nch l=1.5e-6 w=2e-6 m=1 nf=1 
m3 net15 net15 net023 gnd nch l=1.5e-6 w=2e-6 m=1 nf=1 
m1 r net15 vc0 gnd nch l=1.5e-6 w=2e-6 m=1 nf=1 
xi3 net38 s net23 vdd gnd NOR2
xi4 net23 r net38 vdd gnd NOR2
xi1 net23 q vdd gnd INV
xi16 net024 qbp vdd_pin gnd INV
xi2 net38 qb vdd gnd INV
xi15 qb net024 vdd_pin gnd INV
xi14 net029 qp vdd_pin gnd INV
xi13 q net029 vdd_pin gnd INV
xc1 vc1 gnd mimcap lt=4.79e-6 wt=4.79e-6 mf=1 
xc0 vc0 gnd mimcap lt=4.79e-6 wt=4.79e-6 mf=1 
xc4 iref vdd mimcap lt=10e-6 wt=10e-6 mf=1 
.END