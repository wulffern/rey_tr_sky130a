---
layout: home
---

# REY_TR_SKY130A

Standard cell library for analog design, second generation. The library
is not for synthesis, but for the stray logic we sometimes need in
analog schematics.

Made with [ciccreator](https://github.com/wulffern/ciccreator) from the
sources in `cic/`. Regenerate with `cd work && make ip`.

## The rule that makes LVS pass

Every leaf cell needs a `TAPCELLB_CV` companion to be LVS clean — the
cells carry no well or substrate taps of their own, on purpose, so a
row of gates shares one tap. `REYTR_TOP` places every cell next to a
tap and is the cell CI checks.

## Cells

| Group | Cells |
|:--|:--|
| Inverters | IVX1, IVX2, IVX4, IVX8, BFX1 |
| Gates | NRX1, NDX1, ORX1..8, ANX1..8, **EOX1 (xor)**, EONX1 |
| Tristate | IVTRIX1, **IVTRICX1**, NDTRIX1, NRTRIX1 |
| Flip-flops | DFTSPCX1, DFRNQNX1, **DFQNX1** |
| Analog friends | SCX1 (schmitt), **LSX1 (level shifter core)**, SWX2, SWX4, TGX2, TGPD |
| Rails | TIEH, TIEL, TAPCELLB |
| Passives | RPPO2..16, RES2..16, CAPX1 |

Bold cells are new relative to jnw_tr_sky130a, ported from the
analogicus standard library (28FDSOI/65nm silicon) and from the
sun_pll sky130 PLL.

## The level shifter core

![LSX1 schematic](assets/lsx1.svg)

`LSX1_CV` is the cross coupled core only: the PCH pair sits in the
destination supply domain, the doubled NCH pull downs are driven by
the source domain. Make `AN` with an inverter in the source domain,
exactly like `sun_pll` does.

The schematic above is drawn with
[cictikz](https://github.com/wulffern/cictikz); the spec is
[assets/lsx1.cictikz.json](assets/lsx1.cictikz.json).

## Resistors

The poly resistors carry their own guard ring tied to `B`. The guard
standoff is 2.5 route grids — sky130 `poly.9` fails at 2, so this is
minimum. Adjacent resistors can share a guard wall by placing them
with `xoffset=-2.4`, as `REYTR_TOP` demonstrates: four resistors, five
guard walls instead of eight.

## Cell size

The transistor pattern is 16 columns, two filler columns narrower than
the jnw original: a unit transistor is 43.5 um wide instead of 49.5,
12% smaller, with the double diffusion contacts kept. The route grids
stay at 30/40 — shrinking them breaks the 0.17 um contact minimum and
walks coordinates off the 5 nm grid, so with this pattern architecture
the grid is effectively minimum. A square grid was also tried: 30/30
drives the contacts under the same minimum, and 40/40 grows every cell
33% in x. The rectangular grid is deliberate — the vertical pitch
carries the contact and strap stack, the horizontal pitch only carries
track spacing, and each sits at its own DRC floor.

## Capacitors

`CAPX1` is one rey transistor unit wide (88 800 nm) so capacitor rows
tile with transistor rows. There is no CAPX4; tile CAPX1 instead.
