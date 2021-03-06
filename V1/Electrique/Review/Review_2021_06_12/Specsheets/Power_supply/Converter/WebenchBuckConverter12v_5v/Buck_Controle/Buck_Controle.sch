EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Buck Controle"
Date "2020-02-11"
Rev "1"
Comp "Robotique UdeS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Custom_parts:TPS5450DDA U1
U 1 1 5E438FA0
P 5600 3350
F 0 "U1" H 5600 3765 50  0000 C CNN
F 1 "TPS5450DDA" H 5600 3674 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8_ThermalVias" H 5750 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/slvs757d/slvs757d.pdf" H 5750 3750 50  0001 C CNN
	1    5600 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5E43B3FB
P 3600 3300
F 0 "#PWR0101" H 3600 3150 50  0001 C CNN
F 1 "+BATT" H 3615 3473 50  0000 C CNN
F 2 "" H 3600 3300 50  0001 C CNN
F 3 "" H 3600 3300 50  0001 C CNN
	1    3600 3300
	1    0    0    -1  
$EndComp
Connection ~ 4350 3300
$Comp
L power:GND #PWR0102
U 1 1 5E43DD7F
P 4350 3500
F 0 "#PWR0102" H 4350 3250 50  0001 C CNN
F 1 "GND" H 4355 3327 50  0000 C CNN
F 2 "" H 4350 3500 50  0001 C CNN
F 3 "" H 4350 3500 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small Cin3
U 1 1 5E43C0F5
P 4350 3400
F 0 "Cin3" H 4442 3446 50  0000 L CNN
F 1 "10uF" H 4442 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4350 3400 50  0001 C CNN
F 3 "~" H 4350 3400 50  0001 C CNN
	1    4350 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E446310
P 5550 3700
F 0 "#PWR0103" H 5550 3450 50  0001 C CNN
F 1 "GND" H 5555 3527 50  0000 C CNN
F 2 "" H 5550 3700 50  0001 C CNN
F 3 "" H 5550 3700 50  0001 C CNN
	1    5550 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 3400 4900 3400
Wire Wire Line
	4900 3400 4900 3700
Wire Wire Line
	4900 3700 5550 3700
Connection ~ 5550 3700
$Comp
L Device:C_Small Cboot1
U 1 1 5E446D6F
P 6100 2850
F 0 "Cboot1" V 6329 2850 50  0000 C CNN
F 1 "10nF" V 6238 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6100 2850 50  0001 C CNN
F 3 "~" H 6100 2850 50  0001 C CNN
	1    6100 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 3200 6050 3200
Wire Wire Line
	5100 3200 5150 3200
Wire Wire Line
	5100 2400 5100 3200
$Comp
L Device:R Rfbt1
U 1 1 5E450359
P 6700 3200
F 0 "Rfbt1" H 6770 3246 50  0000 L CNN
F 1 "10k" H 6770 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 3200 50  0001 C CNN
F 3 "~" H 6700 3200 50  0001 C CNN
	1    6700 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R Rfbb1
U 1 1 5E45138E
P 6700 3800
F 0 "Rfbb1" H 6770 3846 50  0000 L CNN
F 1 "3.24k" H 6770 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 3800 50  0001 C CNN
F 3 "~" H 6700 3800 50  0001 C CNN
	1    6700 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 3500 6700 3500
Wire Wire Line
	6700 3500 6700 3350
Wire Wire Line
	6700 3650 6700 3500
Connection ~ 6700 3500
Wire Wire Line
	6700 3050 6700 3000
$Comp
L power:GND #PWR0105
U 1 1 5E452792
P 6700 3950
F 0 "#PWR0105" H 6700 3700 50  0001 C CNN
F 1 "GND" H 6705 3777 50  0000 C CNN
F 2 "" H 6700 3950 50  0001 C CNN
F 3 "" H 6700 3950 50  0001 C CNN
	1    6700 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1_Small Cout1
U 1 1 5E452EB3
P 7100 3500
F 0 "Cout1" H 7191 3546 50  0000 L CNN
F 1 "330uF" H 7191 3455 50  0000 L CNN
F 2 "Buck_Controle:CAP_TANT_2917" H 7100 3500 50  0001 C CNN
F 3 "~" H 7100 3500 50  0001 C CNN
	1    7100 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6700 3000 7100 3000
Wire Wire Line
	7100 3000 7100 3400
Connection ~ 6700 3000
Wire Wire Line
	6700 3000 6700 2400
$Comp
L power:GND #PWR0106
U 1 1 5E45550F
P 7100 3950
F 0 "#PWR0106" H 7100 3700 50  0001 C CNN
F 1 "GND" H 7105 3777 50  0000 C CNN
F 2 "" H 7100 3950 50  0001 C CNN
F 3 "" H 7100 3950 50  0001 C CNN
	1    7100 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 3600 7100 3950
Connection ~ 7100 3000
Text Label 7350 3000 2    50   ~ 0
Vout
NoConn ~ 5150 3500
$Comp
L power:GND #PWR0107
U 1 1 5E457DE3
P 1300 7650
F 0 "#PWR0107" H 1300 7400 50  0001 C CNN
F 1 "GND" H 1305 7477 50  0000 C CNN
F 2 "" H 1300 7650 50  0001 C CNN
F 3 "" H 1300 7650 50  0001 C CNN
	1    1300 7650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E458169
P 1300 7650
F 0 "#FLG0101" H 1300 7725 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 7823 50  0000 C CNN
F 2 "" H 1300 7650 50  0001 C CNN
F 3 "~" H 1300 7650 50  0001 C CNN
	1    1300 7650
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0108
U 1 1 5E4586FF
P 1750 7650
F 0 "#PWR0108" H 1750 7500 50  0001 C CNN
F 1 "+BATT" H 1765 7823 50  0000 C CNN
F 2 "" H 1750 7650 50  0001 C CNN
F 3 "" H 1750 7650 50  0001 C CNN
	1    1750 7650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E458D72
P 1750 7650
F 0 "#FLG0102" H 1750 7725 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 7823 50  0000 C CNN
F 2 "" H 1750 7650 50  0001 C CNN
F 3 "~" H 1750 7650 50  0001 C CNN
	1    1750 7650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3300 3650 3300
$Comp
L Device:C_Small Cin2
U 1 1 5E4A0313
P 4000 3400
F 0 "Cin2" H 4092 3446 50  0000 L CNN
F 1 "10uF" H 4092 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4000 3400 50  0001 C CNN
F 3 "~" H 4000 3400 50  0001 C CNN
	1    4000 3400
	1    0    0    -1  
$EndComp
Connection ~ 4000 3300
Wire Wire Line
	4000 3300 4350 3300
$Comp
L Device:C_Small Cin1
U 1 1 5E4A0668
P 3650 3400
F 0 "Cin1" H 3742 3446 50  0000 L CNN
F 1 "10uF" H 3742 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3650 3400 50  0001 C CNN
F 3 "~" H 3650 3400 50  0001 C CNN
	1    3650 3400
	1    0    0    -1  
$EndComp
Connection ~ 3650 3300
Wire Wire Line
	3650 3300 4000 3300
$Comp
L power:GND #PWR0109
U 1 1 5E4A0F97
P 3650 3500
F 0 "#PWR0109" H 3650 3250 50  0001 C CNN
F 1 "GND" H 3655 3327 50  0000 C CNN
F 2 "" H 3650 3500 50  0001 C CNN
F 3 "" H 3650 3500 50  0001 C CNN
	1    3650 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E4A140B
P 4000 3500
F 0 "#PWR0110" H 4000 3250 50  0001 C CNN
F 1 "GND" H 4005 3327 50  0000 C CNN
F 2 "" H 4000 3500 50  0001 C CNN
F 3 "" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3300 5150 3300
$Comp
L Connector:Screw_Terminal_01x02 in_bus1
U 1 1 5FBC6AC6
P 4350 2800
F 0 "in_bus1" H 4430 2792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4430 2701 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 4350 2800 50  0001 C CNN
F 3 "~" H 4350 2800 50  0001 C CNN
	1    4350 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 out_bus1
U 1 1 5FBC7ECB
P 7650 3000
F 0 "out_bus1" H 7730 2992 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7730 2901 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7650 3000 50  0001 C CNN
F 3 "~" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FBC9301
P 7450 3100
F 0 "#PWR0111" H 7450 2850 50  0001 C CNN
F 1 "GND" H 7455 2927 50  0000 C CNN
F 2 "" H 7450 3100 50  0001 C CNN
F 3 "" H 7450 3100 50  0001 C CNN
	1    7450 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FBCA470
P 4150 2900
F 0 "#PWR0112" H 4150 2650 50  0001 C CNN
F 1 "GND" H 4155 2727 50  0000 C CNN
F 2 "" H 4150 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 2800 4000 2800
Wire Wire Line
	4000 2800 4000 3300
Wire Wire Line
	7100 3000 7450 3000
Wire Wire Line
	6100 2950 6100 3200
Wire Wire Line
	6700 2400 6600 2400
Wire Wire Line
	5100 2400 6100 2400
Connection ~ 6250 2400
Connection ~ 6100 2400
Wire Wire Line
	6300 2400 6250 2400
Wire Wire Line
	6250 2400 6100 2400
$Comp
L power:GND #PWR0104
U 1 1 5E44E60C
P 6250 2700
F 0 "#PWR0104" H 6250 2450 50  0001 C CNN
F 1 "GND" H 6255 2527 50  0000 C CNN
F 2 "" H 6250 2700 50  0001 C CNN
F 3 "" H 6250 2700 50  0001 C CNN
	1    6250 2700
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5E44E25D
P 6250 2550
F 0 "D1" V 6204 2629 50  0000 L CNN
F 1 "SBRD10200TR" V 6295 2629 50  0000 L CNN
F 2 "Diode_SMD:D_SMC" H 6250 2550 50  0001 C CNN
F 3 "~" H 6250 2550 50  0001 C CNN
	1    6250 2550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6100 2400 6100 2750
$Comp
L Device:L L1
U 1 1 5E44F76F
P 6450 2400
F 0 "L1" V 6640 2400 50  0000 C CNN
F 1 "15uH" V 6549 2400 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1210A" H 6450 2400 50  0001 C CNN
F 3 "~" H 6450 2400 50  0001 C CNN
	1    6450 2400
	0    1    -1   0   
$EndComp
$EndSCHEMATC
