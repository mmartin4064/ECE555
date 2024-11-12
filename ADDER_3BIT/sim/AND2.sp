** Generated for: hspiceD
** Generated on: Oct 10 17:06:21 2024
** Design library name: ECE555
** Design cell name: AND2
** Design view name: schematic
.GLOBAL vss! vdd!


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0

** Library name: ECE555
** Cell name: AND2
** View name: schematic
.subckt AND2 a b y
mn3 y net1 vss! vss! nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 net2 b vss! vss! nmos_rvt w=108e-9 l=20e-9 nfin=4
mn0 net1 a net2 net2 nmos_rvt w=108e-9 l=20e-9 nfin=4
mp5 net1 b vdd! vdd! pmos_rvt w=162e-9 l=20e-9 nfin=6
mp4 y net1 vdd! vdd! pmos_rvt w=81e-9 l=20e-9 nfin=3
mp2 net1 a vdd! vdd! pmos_rvt w=162e-9 l=20e-9 nfin=6
.ends AND2