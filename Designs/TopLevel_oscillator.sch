v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Buffer} 25 -50 0 0 0.2 0.2 {}
T {inverter} 125 -50 0 0 0.2 0.2 {}
N 85 -45 110 -45 {
lab=#net1}
N 190 -45 225 -45 {
lab=Vout}
N 45 -65 150 -65 {
lab=VDD}
N 45 -25 150 -25 {
lab=GND}
N 5 -110 5 -45 {
lab=Vout}
N 5 -110 225 -110 {
lab=Vout}
N 225 -110 225 -45 {
lab=Vout}
C {devices/code_shown.sym} 30 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {Designs/Buffer.sym} -5 0 0 0 {name=X1}
C {devices/gnd.sym} 45 -25 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 45 -65 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -90 -115 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} -90 -145 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -90 -85 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -90 10 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/gnd.sym} -90 40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -90 -20 2 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 225 -45 2 0 {name=p3 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 140 75 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 10u
.save all
.control
run
set hcopydevtype = svg
hardcopy plot_1.svg v(Vout)
hardcopy plot_2.svg v(Vin)
shell display plot_1.svg &
shell display plot_2.svg &
wrdata osc_data Vout Vin
.endc"}
C {Designs/Inverter.sym} 110 10 0 0 {name=X2}
