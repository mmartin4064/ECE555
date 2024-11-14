* Example HSPICE testbench file (test.sp)
* transistor model
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"

.GLOBAL vss! vdd!

* Design Under Test (DUT)
.INCLUDE "ADDER_2BIT.sp"

* Simulation Parameters
.TEMP 25.0
.options artist=2 ingold=2 parhier=local psf=2 hier_delim=0 accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
* Voltage sources with rise and fall times of 25 ns
* A input cycles: (0,0), (0,1), (1,0), (1,1)
v1 vdd! 0 0.9v
v2 vss! 0 0v
v3 a<1> 0 pwl 0ns 0v 1ns 0v 2ns 0v 3ns 0v 4ns 0.9v 5ns 0.9v
v4 a<0> 0 pwl 0ns 0.9v 1ns 0.9v 2ns 0v 3ns 0v 4ns 0.9v 5ns 0.9v
v5 b<1> 0 pwl 0ns 0v 1ns 0v 1.2ns 0.9v 2ns 0.9v 3ns 0v 4ns 0.9v 5ns 0.9v
v6 b<0> 0 pwl 0ns 0v 1ns 0v 1.2ns 2nsv 0.9v 3ns 0v 4ns 0.9v 5ns 0.9v

* Transient analysis
.tr 0ps 500ps
.end
