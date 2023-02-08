v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {inverter} 60 -50 0 0 0.2 0.2 {}
N 200 -45 225 -45 {
lab=#net1}
N 160 -65 265 -65 {
lab=VP}
N 5 -110 5 -45 {
lab=Y}
N 5 -45 50 -45 {
lab=Y}
N 305 -110 305 -45 {
lab=Y}
N 90 -65 160 -65 {
lab=VP}
N 5 -110 305 -110 {
lab=Y}
C {devices/code_shown.sym} 30 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vdd.sym} 160 -65 0 0 {name=l2 lab=VP}
C {devices/vsource.sym} -90 -115 0 0 {name=VP value=1.8}
C {devices/vdd.sym} -90 -145 0 0 {name=l3 lab=VP}
C {devices/gnd.sym} -90 -85 0 0 {name=l4 lab=GND
}
C {devices/lab_pin.sym} 305 -45 2 0 {name=p3 sig_type=std_logic lab=Y}
C {devices/code_shown.sym} 140 75 0 0 {name=SPICE only_toplevel=false value=".tran 0.1n 10u
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
C {devices/lab_pin.sym} 5 -45 0 0 {name=p1 sig_type=std_logic lab=A}
