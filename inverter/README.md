# inverter

## LVS

1. open `inverter.sch` file in xschem
1. open the Simulation menu
1. set the netlist directory to this directory containing inverter.gds
1. checl the *LVS netlist: Top level is a .subckt*
1. click the *Netlist* buttom to create the netlist `inverter.spice` file
1. open `inverter.gds` in klayout
1. open the gf180mcu PDK menu 
1. Run Klayout LVS

## Layout notes

- If DNWELL is not selected for the instanced nfet or pfet to LVS will fail
- This failure results from an extra signal being present `gf180mcu_gnd` when DNWELL is not selected
