v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {name=TT_MODELS1 only_toplevel=false
.include /usr/local/google/home/nigelcoburn/MixedSignal/silicon-env/share/pdk/gf180mcuC/libs.tech/ngspice/design.ngspice
.lib /usr/local/google/home/nigelcoburn/MixedSignal/silicon-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical

}
E {}
C {Designs/Buffer.sym} -5 0 0 0 {name=X1}
C {devices/gnd.sym} 45 -25 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 45 -65 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -90 -115 0 0 {name=VDD value=1.8}
C {devices/vdd.sym} -90 -145 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -90 -85 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -90 10 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/gnd.sym} -90 40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 5 -45 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -90 -20 2 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 85 -45 2 0 {name=p3 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 140 75 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 1u
.save all
.control
run
set hcopydevtype = svg
hardcopy plot_1.svg v(Vout)
hardcopy plot_2.svg v(Vin)
shell display plot_1.svg &
shell display plot_2.svg &
plot Vin Vout
.endc"}
C {devices/code_shown.sym} 330 -110 0 0 {name=TTModel1 only_toplevel=false value="
.include /usr/local/google/home/nigelcoburn/MixedSignal/silicon-env/share/pdk/gf180mcuC/libs.tech/ngspice/design.ngspice
.libs /usr/local/google/home/nigelcoburn/MixedSignal/silicon-env/share/pdk/gf180mcuC/libs.tech/ngspice/sm141064.ngspice typical
"
}
