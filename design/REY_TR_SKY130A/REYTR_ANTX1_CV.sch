v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=A}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=AVSS}
C {sky130_fd_pr/diode.sym} 400 0 0 0 {name=D1
model=diode_pw2nd_05v5
area=202.5p
perim=1.8u
spiceprefix=X
}
N 400.0 -40.0 400.0 -20.0 {lab=A}
C {devices/lab_pin.sym} 400.0 -40.0 3 0 {name=l0 sig_type=std_logic lab=A }
N 400.0 40.0 400.0 20.0 {lab=AVSS}
C {devices/lab_pin.sym} 400.0 40.0 1 0 {name=l1 sig_type=std_logic lab=AVSS }
