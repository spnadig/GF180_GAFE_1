v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -45 115 -45 {
lab=#net1}
N 60 -85 60 -65 {
lab=VP}
N 60 -85 155 -85 {
lab=VP}
N 155 -85 155 -65 {
lab=VP}
N 60 -25 60 -10 {
lab=VN}
N 60 -10 155 -10 {
lab=VN}
N 155 -25 155 -10 {
lab=VN}
C {Designs/Inverter.sym} 20 10 0 0 {name=X1}
C {Designs/Inverter.sym} 115 10 0 0 {name=X2}
C {devices/iopin.sym} 60 -85 3 0 {name=p1 lab=VP}
C {devices/iopin.sym} 60 -10 1 0 {name=p2 lab=VN}
C {devices/ipin.sym} 20 -45 0 0 {name=p3 lab=A}
C {devices/opin.sym} 195 -45 0 0 {name=p4 lab=Y}
