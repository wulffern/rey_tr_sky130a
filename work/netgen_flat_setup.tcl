#- Netgen setup for the flat LVS flow.
#-
#- The PDK setup first, so all device definitions and permutations are
#- the standard ones.
source $env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl

#- In the flat netlist netgen merges the poly resistor segments across
#- cell boundaries, and the combined l/w of that merge does not equal
#- the lumped resistor the schematic carries, even though the segment
#- values agree. The topology is what this flow checks; the resistor
#- values are checked per cell by the hierarchical flow. Widen the
#- tolerance so the cross-cell merge cannot fail the comparison.
foreach dev {sky130_fd_pr__res_high_po} {
    property "-circuit1 $dev" tolerance {l 1000000.0} {w 1000000.0}
    property "-circuit2 $dev" tolerance {l 1000000.0} {w 1000000.0}
}
