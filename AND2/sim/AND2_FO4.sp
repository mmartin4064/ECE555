.GLOBAL vss! vdd!

** Library name: ECE555
** Cell name: AND2
** View name: schematic
.subckt AND2 a b y
mp3 y net1 vss! vss! nmos_sram w=54e-9 l=20e-9 nfin=2
mp1 net2 b vss! vss! nmos_sram w=108e-9 l=20e-9 nfin=4
mp0 net1 a net2 vss! nmos_sram w=108e-9 l=20e-9 nfin=4
mn5 net1 b vdd! vdd! pmos_sram w=162e-9 l=20e-9 nfin=6
mn4 y net1 vdd! vdd! pmos_sram w=81e-9 l=20e-9 nfin=3
mn2 net1 a vdd! vdd! pmos_sram w=162e-9 l=20e-9 nfin=6
.ends AND2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV in out
mp0 out in vdd! vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 out in vss! vss! nmos_rvt w=27e-9 l=20e-9 nfin=1
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: AND2_FO4
** View name: schematic
.subckt AND2_FO4 a b y
xi0 a b y AND2
xi4 y net6 INV
xi3 y net5 INV
xi2 y net3 INV
xi1 y net1 INV
.ends AND2_FO4
