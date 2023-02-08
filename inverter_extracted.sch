v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 5 -45 50 -45 {
lab=A}
N 160 -60 160 -40 {
lab=#net1}
N 305 -45 305 -30 {
lab=Y}
N 50 -25 120 -25 {
lab=A}
N 50 -45 50 -25 {
lab=A}
N 200 -25 305 -25 {
lab=Y}
N 305 -30 305 -20 {
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
C {devices/code_shown.sym} -110 45 0 0 {name=SPICE only_toplevel=false value=".include /usr/local/google/home/sachinnadig/MixedSignal_ENV/GF180_GAFE_1/inverter_extracted.spice
.tran 0.01u 1u
.save all
.control
run
set hcopydevtype = svg
hardcopy plot_1.svg v(Y)
hardcopy plot_2.svg v(A)
shell display plot_1.svg &
shell display plot_2.svg &
wrdata inv_data Y A
.endc"}
C {devices/lab_pin.sym} 5 -45 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/gnd.sym} 160 -5 0 0 {name=l1 lab=GND
}
C {GF180_GAFE_1/inverter_extracted.sym} 120 30 0 0 {name=X1}
C {devices/vsource.sym} 5 -15 0 0 {name=V1 value= "1 PULSE ( 0 1 2ns 2nS 2ns 50ns 100ns 5)"}
C {devices/gnd.sym} 5 15 0 0 {name=l5 lab=GND
}
