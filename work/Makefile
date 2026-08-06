
#- Core makefile provides the following commands:
# -----------------------------------------------------------
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# xsch: generate xsch/<CELL>.spice
# lvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
# -----------------------------------------------------------

PREFIX=
LIB=REY_TR_SKY130A
CELL=REYTR_TOP

#- Provide cells you want to check for the lvsall drcall commands
CELLS = REYTR_TOP REYTR_IVX1_CV REYTR_IVX2_CV REYTR_IVX4_CV REYTR_IVX8_CV \
        REYTR_BFX1_CV REYTR_NRX1_CV REYTR_NDX1_CV REYTR_ORX1_CV REYTR_ANX1_CV \
        REYTR_ANX2_CV REYTR_ANX4_CV REYTR_ANX8_CV REYTR_ORX2_CV REYTR_ORX4_CV REYTR_ORX8_CV \
        REYTR_EOX1_CV REYTR_EONX1_CV REYTR_IVTRIX1_CV REYTR_IVTRICX1_CV REYTR_NDTRIX1_CV REYTR_NRTRIX1_CV \
        REYTR_DFTSPCX1_CV REYTR_DFRNQNX1_CV REYTR_DFQNX1_CV REYTR_SCX1_CV REYTR_LSX1_CV \
        REYTR_SWX2_CV REYTR_SWX4_CV REYTR_TGPD_CV REYTR_TIEH_CV REYTR_TIEL_CV REYTR_TAPCELLB_CV \
        REYTR_RPPO2 REYTR_RPPO4 REYTR_RPPO8 REYTR_RPPO16 REYTR_CAPX1

#- Flat extraction for LVS: the leaf cells carry no taps on purpose, so
#- hierarchical extraction fails them on floating bulk. Flat resolves
#- wells against the taps in TOP and catches cross-cell shorts
LVSTCL=lvsflat.tcl
NETGENSETUP=netgen_flat_setup.tcl
OPT=--noprop

include ../tech/make/core.make
