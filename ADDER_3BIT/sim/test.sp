* Example HSPICE testbench file (test.sp)
* transistor model
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"

.GLOBAL vss! vdd!

* Design Under Test (DUT)
.INCLUDE "AND2.pex.netlist"
.INCLUDE "INV.sp"

* Simulation Parameters
.TEMP 25.0
.options artist=2 ingold=2 parhier=local psf=2 hier_delim=0 accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1

* Voltage sources with rise and fall times of 25 ns
* A input cycles: (0,0), (0,1), (1,0), (1,1)
v1 vdd! 0 0.9v
v2 vss! 0 0v
vin1 in1 gnd PWL(0ps 0 25ps 0 50ps 0 75ps 0 100ps 0 125ps 0.9 150ps 0.9 175ps 0.9 200ps 0.9 225ps 0 250ps 0 275ps 0 300ps 0 325ps 0.9 350ps 0.9 375ps 0.9 400ps 0.9 425ps 0.9 450ps 0.9 475ps 0.9)
vin2 in2 gnd PWL(0ps 0 25ps 0 50ps 0 75ps 0 100ps 0 125ps 0 150ps 0 175ps 0 200ps 0 225ps 0.9 250ps 0.9 275ps 0.9 300ps 0.9 325ps 0.9 350ps 0.9 375ps 0.9 400ps 0 425ps 0 450ps 0 475ps 0)

* Instantiate AND gate
xand vss! vdd! in1 in2 out AND2
xinv1 out n1 INV
xinv2 out n2 INV
xinv3 out n3 INV
xinv4 out n4 INV

* Transient analysis
.tr 0ps 500ps
.end
