[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)

# Who
Carsten Wulff carsten@wulff.no

# Why
Core voltage library with digital cells, resistors, capacitors and standard
transistors. Second generation of jnw_tr_sky130a.

The library is not for synthesis, but for the stray logic we sometimes need to
have in analog schematics.

If you find yourself using lots of digital cells from this library, then
consider learning verilog and openlane. It will be smaller.

## What is different from jnw_tr

- **More gates**: ANX2/4/8 and ORX2/4/8 drive strengths, exclusive or
  (EOX1, EONX1), a D-flip-flop without reset (DFQNX1), and a tristate
  inverter with single ended enable (IVTRICX1), all ported from the
  analogicus standard library that has seen silicon in 28nm and 65nm.
- **A level shifter core** (LSX1), ported from the sun_pll sky130 PLL.
  Cross coupled PCH pair in the destination domain; make AN with an
  inverter in the source domain.
- **The Schmitt trigger is SCX1**, same as jnw, noted here because it is
  easy to miss.
- **Tighter resistors**: the guard standoff is 2.5 route grids instead
  of 3, which is as close as sky130 poly.9 allows, and the TOP shows how
  to overlap adjacent resistor guard rings with xoffset=-2.4 so
  neighbours share a guard wall.
- **CAPX1 is 88800 nm wide**, one rey transistor unit, so capacitors
  tile with transistor rows. CAPX4 is gone; tile CAPX1 instead.

# How
 Made with [ciccreator](https://github.com/wulffern/ciccreator). Source files in
 [cic/](cic/)

Regenerate with

```sh
cd work
make ip
```

Every cell must have a TAPCELLB_CV companion to be LVS clean; that is
what REYTR_TOP demonstrates and what CI checks.

# What

| What      | Path                                                                       |
|:----------|:---------------------------------------------------------------------------|
| Schematic | [design/REY_TR_SKY130A/REYTR_TOP.sch](design/REY_TR_SKY130A/REYTR_TOP.sch) |
| Layout    | [design/REY_TR_SKY130A/REYTR_TOP.mag](design/REY_TR_SKY130A/REYTR_TOP.mag) |
| Doc       | [docs/](docs/)                                                             |
