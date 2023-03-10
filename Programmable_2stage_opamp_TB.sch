v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 10 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 0 35 0 0 {name=SPICE only_toplevel=false value=".include /usr/local/google/home/sachinnadig/MixedSignal_ENV_head/GF180_GAFE_1/OTA_2stage_extracted.spice

*****Testbench for Programmable_2stage_opamp

************************************************************************************************
X1 vout vin1 vin2 vdd vss vp OTA_2stage
V1 vdd GND 3.3
V2 vss GND 0
V3 vin1 GND dc 1.4 ac 1 SIN(1.4 10m 10MEG 0)
V4 vin2 GND dc 1.4 ac 0 SIN(1.4 -10m 10MEG 0)
V5 vp GND dc 0 


* control language script
*.control
*tran 100p 500n               ; simulation command 1
*print v(vout) 
                ****Save all currents

.save i(v1)
.save i(v2)
.save i(v3)
.save i(v4)
.save i(v5)

.save @m.xm10.m0[vth]

.save @m.xm10.m0[gm]

.save @m.xm10.m0[gds]

.save @m.xm9.m0[id]

.save @m.xm10.m0[id]

.save @m.xm7.m0[id]

.save @m.xm6.m0[id]

.save @m.xm5.m0[id]

.save @m.xm4.m0[id]

.save @m.xm3.m0[id]

.save @m.xm2.m0[id]

.save @m.xm1.m0[id]

.save @m.xm7.m0[vth]

.save @m.xm7.m0[gm]

.save @m.xm7.m0[gds]

.save @m.xm6.m0[vth]

.save @m.xm6.m0[gm]

.save @m.xm6.m0[gds]

.save @m.xm5.m0[vth]

.save @m.xm5.m0[gm]

.save @m.xm5.m0[gds]

.save @m.xm4.m0[vth]

.save @m.xm4.m0[gm]

.save @m.xm4.m0[gds]

.save @m.xm3.m0[vth]

.save @m.xm3.m0[gm]

.save @m.xm3.m0[gds]

.save @m.xm2.m0[vth]

.save @m.xm2.m0[gm]

.save @m.xm2.m0[gds]

.save @m.xm1.m0[vth]

.save @m.xm1.m0[gm]

.save @m.xm1.m0[gds]

.save all

.control

run

let a = 0

let b = 0

let step = 0.1

let final = 2

let test = a

let test1 = a

let cnt = 0

let ind = ((final-a)/step)

let n = vector(ind)

let power = vector(ind)



set color0 = white

set color1 = black

set hcopydevtype = svg

setcs svg_stropts = ( black Arial Arial )



set gain = ' '

set phasedeg = ' '

set tranout = ' '

set nolegend



while test le final

alter @v5[dc] = test

print @v5[dc]

let test = test + step

ac dec 10 1 300MEG

let phase = \{57.29*vp(vout)\}-180

set gain = ( $gain db(\{$curplot\}.vout) )

set phasedeg = ( $phasedeg (\{$curplot\}.phase) )

end

set hcopydevtype = svg
hardcopy plot_0.svg $gain xlabel Frequency(Hz) ylabel Gain(db) title Gain(dB)
shell display plot_0.svg &

set hcopydevtype = svg
hardcopy plot_1.svg $phasedeg xlabel Frequency(Hz) ylabel Phase(deg) title Phase(deg)
shell display plot_1.svg &

*plot $gain xlabel Frequency(Hz) ylabel Gain(db) title Gain(dB)

*plot $phasedeg xlabel Frequency(Hz) ylabel Phase(deg) title Phase(deg)

*hardcopy Gain.svg $gain xlabel Frequency(Hz) ylabel Gain(db) title 'OTA_2stage Gain(ss)'

*hardcopy Phase.svg $phasedeg xlabel Frequency(Hz) ylabel Phase(deg) title 'OTA_2stage Phase(ss)'




let test = a

while test le final

alter @v5[dc] = test

print @v5[dc]

let test = test + step

tran 1ns 500ns 0

set tranout = ( $tranout (\{$curplot\}.vout) )

end

set hcopydevtype = svg
hardcopy plot_2.svg $tranout xlabel Time(ns) ylabel Output(V) title Output_Signal
shell display plot_2.svg &


*plot $tranout xlabel Time(ns) ylabel Output(V) title Output_Signal

*hardcopy Transient.svg $tranout xlabel Time(ns) ylabel Output title 'OTA_2stage Transient Plot(ss)'



while test1 le final

alter @v5[dc] = test1

print @v5[dc]

save all

let ic = @m.xm5.m0[id] + @m.xm6.m0[id] + @m.xm8.m0[id]*7

let power[cnt] = 3.3*ic

let test1 = test1 + step

noise v(vout) v3 dec 100 20K 2MEG 1

let n[cnt] = inoise_total

let cnt = cnt + 1

end

set hcopydevtype = svg
hardcopy plot_3.svg n vs power xlabel Power(mW) ylabel Integrated_Noise(uV) title Integrated_Noise
shell display plot_3.svg &

*plot n vs power xlabel Power(mW) ylabel Integrated_Noise(uV) title Integrated_Noise

*hardcopy Noise.svg n vs power xlabel Power(mW) ylabel Integrated_Noise(uV) title 'OTA_2stage Integrated_Noise(ss)'


.endc



.param  sw_stat_mismatch = 0



**** end user architecture code

**.ends

.GLOBAL GND

.end

"}
