v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -720 760 -720 {
lab=vx}
N 520 -690 520 -550 {
lab=vx}
N 800 -690 800 -550 {
lab=#net1}
N 800 -630 930 -630 {
lab=#net1}
N 930 -720 930 -630 {
lab=#net1}
N 930 -720 970 -720 {
lab=#net1}
N 160 -870 1190 -870 {
lab=vdd}
N 260 -870 260 -750 {
lab=vdd}
N 260 -720 300 -720 {
lab=vdd}
N 300 -870 300 -720 {
lab=vdd}
N 260 -690 260 -380 {
lab=vbias_tail}
N 300 -350 600 -350 {
lab=vbias_tail}
N 340 -350 600 -350 {
lab=vbias_tail}
N 340 -420 340 -350 {
lab=vbias_tail}
N 260 -420 340 -420 {
lab=vbias_tail}
N 460 -810 1080 -810 {
lab=vdd}
N 1080 -810 1080 -720 {
lab=vdd}
N 1010 -720 1080 -720 {
lab=vdd}
N 1010 -810 1010 -750 {
lab=vdd}
N 800 -720 850 -720 {
lab=vdd}
N 850 -810 850 -720 {
lab=vdd}
N 800 -810 800 -750 {
lab=vdd}
N 710 -870 710 -810 {
lab=vdd}
N 520 -810 520 -750 {
lab=vdd}
N 460 -810 460 -720 {
lab=vdd}
N 460 -720 520 -720 {
lab=vdd}
N 630 -720 630 -650 {
lab=vx}
N 520 -650 630 -650 {
lab=vx}
N 520 -520 800 -520 {
lab=vss}
N 520 -490 520 -460 {
lab=vtail}
N 520 -460 800 -460 {
lab=vtail}
N 800 -490 800 -460 {
lab=vtail}
N 640 -460 640 -380 {
lab=vtail}
N 770 -350 970 -350 {
lab=vbias_tail}
N 770 -350 770 -300 {
lab=vbias_tail}
N 520 -300 770 -300 {
lab=vbias_tail}
N 520 -350 520 -300 {
lab=vbias_tail}
N 180 -250 1160 -250 {
lab=vss}
N 640 -320 640 -250 {
lab=vss}
N 640 -350 720 -350 {
lab=vss}
N 720 -520 720 -350 {
lab=vss}
N 720 -350 720 -250 {
lab=vss}
N 1010 -320 1010 -250 {
lab=vss}
N 1010 -350 1060 -350 {
lab=vss}
N 1060 -350 1060 -250 {
lab=vss}
N 1010 -690 1010 -380 {
lab=vout}
N 260 -320 260 -250 {
lab=vss}
N 200 -350 260 -350 {
lab=vss}
N 200 -350 200 -250 {
lab=vss}
N 1010 -640 1140 -640 {
lab=vout}
N 440 -520 480 -520 {
lab=vin1}
N 840 -520 880 -520 {
lab=vin2}
N 180 -720 220 -720 {
lab=vp}
N 1130 -450 1130 -250 {
lab=vss}
N 1010 -510 1130 -510 {
lab=vout}
N 980 -580 1010 -580 {
lab=vout}
N 900 -580 920 -580 {}
N 800 -580 840 -580 {}
C {symbols/nfet_03v3.sym} 500 -520 0 0 {name=M1
L=1u
W=100u
nf=100
m=18
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 820 -520 0 1 {name=M2
L=1u
W=100u
nf=100
m=18
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 540 -720 0 1 {name=M3
L=2u
W=50u
nf=50
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 780 -720 0 0 {name=M4
L=2u
W=50u
nf=50
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 620 -350 0 0 {name=M5
L=1u
W=60u
nf=60
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 280 -350 0 1 {name=M6
L=1u
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 240 -720 0 0 {name=M7
L=2u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 990 -720 0 0 {name=M8
L=0.7u
W=100u
nf=100
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 990 -350 0 0 {name=M9
L=1u
W=100u
nf=100
m=7
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 1190 -870 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 1160 -250 0 0 {name=p2 lab=vss}
C {devices/ipin.sym} 440 -520 0 0 {name=p3 lab=vin1}
C {devices/ipin.sym} 880 -520 0 1 {name=p4 lab=vin2}
C {devices/ipin.sym} 180 -720 0 0 {name=p5 lab=vp}
C {devices/opin.sym} 1140 -640 0 0 {name=p6 lab=vout}
C {devices/lab_pin.sym} 520 -610 0 0 {name=p7 sig_type=std_logic lab=vx}
C {devices/lab_pin.sym} 640 -430 0 0 {name=p8 sig_type=std_logic lab=vtail}
C {devices/lab_pin.sym} 490 -350 0 0 {name=p9 sig_type=std_logic lab=vbias_tail}
C {devices/capa.sym} 1130 -480 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 950 -580 3 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 870 -580 3 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
