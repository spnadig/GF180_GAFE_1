v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -65 265 -65 {
lab=VP}
N 90 -65 160 -65 {
lab=VP}
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
C {devices/lab_pin.sym} 200 -45 2 0 {name=p3 sig_type=std_logic lab=Y}
C {devices/code_shown.sym} 140 75 0 0 {name=SPICE only_toplevel=false value=".include /usr/local/google/home/sachinnadig/MixedSignal_ENV/GF180_GAFE_1/TopLevel_oscillator_extracted.spice
.tran 0.005u 2u
.save all
.control
run
set hcopydevtype = svg
hardcopy plot_1.svg v(Y)
shell display plot_1.svg &
wrdata osc_out_extracted Y

setplot tran1
linearize v(Y)
set specwindow=blackman
fft V(Y)
hardcopy plot_2.svg mag(v(Y))
shell display plot_2.svg &
wrdata osc_fft_extracted mag(v(Y)
.endc"}
C {TopLevel_oscillator_extracted.sym} 120 10 0 0 {name=X1}
C {devices/gnd.sym} 160 -25 0 0 {name=l1 lab=GND
}
