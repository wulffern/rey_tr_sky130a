v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=AVDD}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=AVSS}
C {devices/iopin.sym} 0 40 0 0 {name=p2 lab=CKI}
C {devices/iopin.sym} 0 60 0 0 {name=p3 lab=CKO}
C {devices/iopin.sym} 0 80 0 0 {name=p4 lab=CKO50DC}
C {devices/iopin.sym} 0 100 0 0 {name=p5 lab=RN}
C {REY_TR_SKY130A/REYTR_TAPCELLB_CV.sym} 400 0 0 0 {name=XXA12v}
N 400.0 -40.0 400.0 -20.0 {lab=AVDD}
C {devices/lab_pin.sym} 400.0 -40.0 3 0 {name=l0 sig_type=std_logic lab=AVDD }
N 400.0 40.0 400.0 20.0 {lab=AVSS}
C {devices/lab_pin.sym} 400.0 40.0 1 0 {name=l1 sig_type=std_logic lab=AVSS }
C {REY_TR_SKY130A/REYTR_BFX1_CV.sym} 400 150.0 0 0 {name=XXA1}
N 380.0 150.0 400.0 150.0 {lab=CKI}
C {devices/lab_pin.sym} 380.0 150.0 0 0 {name=l2 sig_type=std_logic lab=CKI }
N 500.0 150.0 480.0 150.0 {lab=CKIB}
C {devices/lab_pin.sym} 500.0 150.0 2 0 {name=l3 sig_type=std_logic lab=CKIB }
N 440.0 90.0 440.0 110.0 {lab=AVDD}
C {devices/lab_pin.sym} 440.0 90.0 3 0 {name=l4 sig_type=std_logic lab=AVDD }
N 440.0 210.0 440.0 190.0 {lab=AVSS}
C {devices/lab_pin.sym} 440.0 210.0 1 0 {name=l5 sig_type=std_logic lab=AVSS }
C {REY_TR_SKY130A/REYTR_IVX1_CV.sym} 400 340.0 0 0 {name=XXA2}
N 380.0 340.0 400.0 340.0 {lab=CKIB}
C {devices/lab_pin.sym} 380.0 340.0 0 0 {name=l6 sig_type=std_logic lab=CKIB }
N 500.0 340.0 480.0 340.0 {lab=CKIN}
C {devices/lab_pin.sym} 500.0 340.0 2 0 {name=l7 sig_type=std_logic lab=CKIN }
N 440.0 280.0 440.0 300.0 {lab=AVDD}
C {devices/lab_pin.sym} 440.0 280.0 3 0 {name=l8 sig_type=std_logic lab=AVDD }
N 440.0 400.0 440.0 380.0 {lab=AVSS}
C {devices/lab_pin.sym} 440.0 400.0 1 0 {name=l9 sig_type=std_logic lab=AVSS }
C {REY_TR_SKY130A/REYTR_DFRNQNX1_CV.sym} 400 530.0 0 0 {name=XXA4}
N 380.0 470.0 400.0 470.0 {lab=QNI}
C {devices/lab_pin.sym} 380.0 470.0 0 0 {name=l10 sig_type=std_logic lab=QNI }
N 380.0 530.0 400.0 530.0 {lab=CKIN}
C {devices/lab_pin.sym} 380.0 530.0 0 0 {name=l11 sig_type=std_logic lab=CKIN }
N 430.0 580.0 430.0 560.0 {lab=RN}
C {devices/lab_pin.sym} 430.0 580.0 1 0 {name=l12 sig_type=std_logic lab=RN }
N 520.0 470.0 500.0 470.0 {lab=CKO50DC}
C {devices/lab_pin.sym} 520.0 470.0 2 0 {name=l13 sig_type=std_logic lab=CKO50DC }
N 520.0 530.0 500.0 530.0 {lab=QN}
C {devices/lab_pin.sym} 520.0 530.0 2 0 {name=l14 sig_type=std_logic lab=QN }
N 460.0 420.0 460.0 440.0 {lab=AVDD}
C {devices/lab_pin.sym} 460.0 420.0 3 0 {name=l15 sig_type=std_logic lab=AVDD }
N 460.0 580.0 460.0 560.0 {lab=AVSS}
C {devices/lab_pin.sym} 460.0 580.0 1 0 {name=l16 sig_type=std_logic lab=AVSS }
C {REY_TR_SKY130A/REYTR_IVX1_CV.sym} 400 760.0 0 0 {name=XXA3}
N 380.0 760.0 400.0 760.0 {lab=CKO50DC}
C {devices/lab_pin.sym} 380.0 760.0 0 0 {name=l17 sig_type=std_logic lab=CKO50DC }
N 500.0 760.0 480.0 760.0 {lab=QNI}
C {devices/lab_pin.sym} 500.0 760.0 2 0 {name=l18 sig_type=std_logic lab=QNI }
N 440.0 700.0 440.0 720.0 {lab=AVDD}
C {devices/lab_pin.sym} 440.0 700.0 3 0 {name=l19 sig_type=std_logic lab=AVDD }
N 440.0 820.0 440.0 800.0 {lab=AVSS}
C {devices/lab_pin.sym} 440.0 820.0 1 0 {name=l20 sig_type=std_logic lab=AVSS }
C {REY_TR_SKY130A/REYTR_ANX1_CV.sym} 400 950.0 0 0 {name=XXA5}
N 380.0 930.0 400.0 930.0 {lab=CKO50DC}
C {devices/lab_pin.sym} 380.0 930.0 0 0 {name=l21 sig_type=std_logic lab=CKO50DC }
N 380.0 950.0 400.0 950.0 {lab=CKI}
C {devices/lab_pin.sym} 380.0 950.0 0 0 {name=l22 sig_type=std_logic lab=CKI }
N 510.0 940.0 490.0 940.0 {lab=CKO}
C {devices/lab_pin.sym} 510.0 940.0 2 0 {name=l23 sig_type=std_logic lab=CKO }
N 440.0 880.0 440.0 900.0 {lab=AVDD}
C {devices/lab_pin.sym} 440.0 880.0 3 0 {name=l24 sig_type=std_logic lab=AVDD }
N 440.0 1000.0 440.0 980.0 {lab=AVSS}
C {devices/lab_pin.sym} 440.0 1000.0 1 0 {name=l25 sig_type=std_logic lab=AVSS }
