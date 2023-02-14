v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {
}
E {}
B 2 -815 20 -15 420 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.16593e-07
x2=9.38394e-06
divx=5
subdivx=1
node="z
en"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -815 420 -15 820 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.16593e-07
x2=9.38394e-06
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0


color=7
node=x1.osc_sig}
N 60 -60 120 -60 {
lab=EN}
N 120 -60 120 -45 {
lab=EN}
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
C {devices/code_shown.sym} 140 75 0 0 {name=SPICE only_toplevel=false value=".include /usr/local/google/home/sachinnadig/MixedSignal_ENV/GF180_GAFE_1/top.spice
.tran 0.005u 8u
.save all
.control
run

wrdata osc_out_extracted EN Z
write TOP_extracted.raw

linearize V(x1.osc_sig)
set specwindow = blackman
fft V(x1.osc_sig)

set hcopydevtype = svg
hardcopy plot_0.svg mag((x1.osc_sig))
shell display plot_0.svg &

.endc"}
C {devices/lab_pin.sym} 200 -45 2 0 {name=p1 sig_type=std_logic lab=Z}
C {devices/vsource.sym} 60 -30 0 0 {name=V1 value=" PULSE ( 0 1 2NS 2NS 2NS 1uS 2uS 2)"}
C {devices/gnd.sym} 60 0 0 0 {name=l5 lab=GND
}
C {devices/lab_pin.sym} 120 -60 0 0 {name=p2 sig_type=std_logic lab=EN}
C {devices/gnd.sym} 150 -25 0 0 {name=l1 lab=GND
}
C {devices/launcher.sym} -625 -35 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"}
C {top.sym} 120 10 0 0 {name=X1}
