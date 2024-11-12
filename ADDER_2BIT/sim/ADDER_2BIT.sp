** Library name: ece555
** Cell name: ADDER_1BIT
** View name: schematic
.subckt ADDER_1BIT a b cin vdd vss _net1 _net0
mp23 net55 a vdd vdd pmos_rvt w=135e-9 l=20e-9 nfin=5
mp22 net51 b net55 net55 pmos_rvt w=135e-9 l=20e-9 nfin=5
mp21 _net0 net6 net51 net51 pmos_rvt w=135e-9 l=20e-9 nfin=5
mp20 net6 cin vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp19 net6 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp18 net6 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp17 _net0 _net1 net6 net6 pmos_rvt w=81e-9 l=20e-9 nfin=3
mp16 net3 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp15 _net1 a net3 net3 pmos_rvt w=81e-9 l=20e-9 nfin=3
mp14 net1 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp13 net1 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 _net1 cin net1 net1 pmos_rvt w=81e-9 l=20e-9 nfin=3
mn12 _net0 net6 net33 _net0 nmos_rvt w=81e-9 l=20e-9 nfin=3
mn11 net33 b net29 net33 nmos_rvt w=81e-9 l=20e-9 nfin=3
mn10 net29 a vss net29 nmos_rvt w=81e-9 l=20e-9 nfin=3
mn9 net15 cin vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn8 net15 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn7 net15 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn6 _net0 _net1 net15 net15 nmos_rvt w=54e-9 l=20e-9 nfin=2
mn5 net11 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn4 _net1 a net11 net11 nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net2 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 net2 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 _net1 cin net2 _net1 nmos_rvt w=54e-9 l=20e-9 nfin=2
.ends ADDER_1BIT
** End of subcircuit definition.

** Library name: ece555
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
mp0 out in vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn1 out in vss vss nmos_rvt w=81e-9 l=20e-9 nfin=3
.ends INV
** End of subcircuit definition.

** Library name: ece555
** Cell name: ADDER_2BIT
** View name: schematic
xi2 net2 net3 net1 vdd vss cout net11 ADDER_1BIT
xi1 a<0> b<0> vss vdd vss net1 sum<0> ADDER_1BIT
xi5 net11 sum<1> vdd vss INV
xi4 a<1> net2 vdd vss INV
xi3 b<1> net3 vdd vss INV
.END
