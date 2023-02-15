v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 740 -590 740 -560 {
lab=VP}
N 740 -470 740 -440 {
lab=VN}
N 670 -560 700 -560 {
lab=A}
N 670 -560 670 -470 {
lab=A}
N 670 -470 700 -470 {
lab=A}
N 640 -520 670 -520 {
lab=A}
N 740 -530 740 -500 {
lab=Y}
C {devices/ipin.sym} 640 -520 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 740 -590 3 0 {name=p2 lab=VP}
C {devices/iopin.sym} 740 -440 1 0 {name=p3 lab=VN}
C {devices/opin.sym} 740 -520 0 0 {name=p4 lab=Y}
C {symbols/pfet_03v3.sym} 720 -560 0 0 {name=M3
L=0.28u
W=0.22u
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
lvs_format="@name @pinlist pfet_03v3_dn L=@L W=@W nf=@nf m=@m"
}
C {symbols/nfet_03v3.sym} 720 -470 0 0 {name=M4
L=0.28u
W=0.22u
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
lvs_format="@name @pinlist nfet_03v3_dn L=@L W=@W nf=@nf m=@m"

}
