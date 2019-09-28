EESchema Schematic File Version 4
LIBS:adapter-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x14 J1
U 1 1 5D86B354
P 2950 3250
F 0 "J1" H 3030 3242 50  0000 L CNN
F 1 "Conn_01x14" H 3030 3151 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 2950 3250 50  0001 C CNN
F 3 "~" H 2950 3250 50  0001 C CNN
	1    2950 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x14 J2
U 1 1 5D86F0A6
P 3550 3250
F 0 "J2" H 3468 4067 50  0000 C CNN
F 1 "Conn_01x14" H 3468 3976 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 3550 3250 50  0001 C CNN
F 3 "~" H 3550 3250 50  0001 C CNN
	1    3550 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5D8739A8
P 2650 2650
F 0 "#PWR0101" H 2650 2500 50  0001 C CNN
F 1 "+5V" H 2665 2823 50  0000 C CNN
F 2 "" H 2650 2650 50  0001 C CNN
F 3 "" H 2650 2650 50  0001 C CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D874A42
P 3900 2650
F 0 "#PWR0102" H 3900 2500 50  0001 C CNN
F 1 "+5V" H 3915 2823 50  0000 C CNN
F 2 "" H 3900 2650 50  0001 C CNN
F 3 "" H 3900 2650 50  0001 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5D875654
P 6900 2300
F 0 "#PWR0103" H 6900 2150 50  0001 C CNN
F 1 "+5V" H 6915 2473 50  0000 C CNN
F 2 "" H 6900 2300 50  0001 C CNN
F 3 "" H 6900 2300 50  0001 C CNN
	1    6900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2650 2650 2650
Wire Wire Line
	3750 2650 3900 2650
$Comp
L power:GND #PWR0104
U 1 1 5D87B20C
P 2650 4050
F 0 "#PWR0104" H 2650 3800 50  0001 C CNN
F 1 "GND" H 2655 3877 50  0000 C CNN
F 2 "" H 2650 4050 50  0001 C CNN
F 3 "" H 2650 4050 50  0001 C CNN
	1    2650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3950 2650 3950
Wire Wire Line
	2650 3950 2650 4050
Wire Wire Line
	6900 2500 6900 2300
Wire Wire Line
	5800 3200 6500 3200
Wire Wire Line
	6500 3300 5800 3300
Wire Wire Line
	5800 3400 6500 3400
$Comp
L power:GND #PWR0105
U 1 1 5D8A47AA
P 6900 4900
F 0 "#PWR0105" H 6900 4650 50  0001 C CNN
F 1 "GND" H 6905 4727 50  0000 C CNN
F 2 "" H 6900 4900 50  0001 C CNN
F 3 "" H 6900 4900 50  0001 C CNN
	1    6900 4900
	1    0    0    -1  
$EndComp
Text GLabel 7400 2700 2    50   Input ~ 0
AD0
Text GLabel 7400 2800 2    50   Input ~ 0
AD1
Text GLabel 7400 2900 2    50   Input ~ 0
AD2
Text GLabel 7400 3000 2    50   Input ~ 0
AD3
Text GLabel 7400 3100 2    50   Input ~ 0
AD4
Text GLabel 7400 3200 2    50   Input ~ 0
AD5
Text GLabel 7400 3300 2    50   Input ~ 0
AD6
Text GLabel 7400 3400 2    50   Input ~ 0
AD7
Wire Wire Line
	7300 2700 7400 2700
Wire Wire Line
	7400 2800 7300 2800
Wire Wire Line
	7300 2900 7400 2900
Wire Wire Line
	7400 3000 7300 3000
Wire Wire Line
	7300 3100 7400 3100
Wire Wire Line
	7400 3200 7300 3200
Wire Wire Line
	7300 3300 7400 3300
Wire Wire Line
	7400 3400 7300 3400
Text GLabel 2650 3250 0    50   Input ~ 0
A8
Text GLabel 6400 3500 0    50   Input ~ 0
A8
Text GLabel 2650 3450 0    50   Input ~ 0
A9
Text GLabel 6400 3600 0    50   Input ~ 0
A9
Text GLabel 6400 3700 0    50   Input ~ 0
A10
Text GLabel 2650 3650 0    50   Input ~ 0
A10
Text GLabel 6400 3800 0    50   Input ~ 0
A11
Text GLabel 2650 3850 0    50   Input ~ 0
A11
Text GLabel 6400 3900 0    50   Input ~ 0
A12
Text GLabel 3850 3850 2    50   Input ~ 0
A12
Text GLabel 6400 4000 0    50   Input ~ 0
A13
Text GLabel 3850 3650 2    50   Input ~ 0
A13
Text GLabel 6400 4100 0    50   Input ~ 0
A14
Text GLabel 3850 3450 2    50   Input ~ 0
A14
Text GLabel 6400 4200 0    50   Input ~ 0
A15
Text GLabel 3850 3250 2    50   Input ~ 0
A15
Wire Wire Line
	6400 3500 6500 3500
Wire Wire Line
	6500 3600 6400 3600
Wire Wire Line
	6400 3700 6500 3700
Wire Wire Line
	6500 3800 6400 3800
Wire Wire Line
	6400 3900 6500 3900
Wire Wire Line
	6500 4000 6400 4000
Wire Wire Line
	6400 4100 6500 4100
Wire Wire Line
	6500 4200 6400 4200
Text GLabel 3850 2950 2    50   Input ~ 0
ALE
Text GLabel 2650 2950 0    50   Input ~ 0
EN
$Comp
L power:+5V #PWR01
U 1 1 5D93CBC5
P 5300 2300
F 0 "#PWR01" H 5300 2150 50  0001 C CNN
F 1 "+5V" H 5315 2473 50  0000 C CNN
F 2 "" H 5300 2300 50  0001 C CNN
F 3 "" H 5300 2300 50  0001 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D93D0FE
P 5300 4100
F 0 "#PWR02" H 5300 3850 50  0001 C CNN
F 1 "GND" H 5305 3927 50  0000 C CNN
F 2 "" H 5300 4100 50  0001 C CNN
F 3 "" H 5300 4100 50  0001 C CNN
	1    5300 4100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS573 U1
U 1 1 5D945596
P 5300 3200
F 0 "U1" H 5000 4000 50  0000 C CNN
F 1 "74LS573" H 5000 3900 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 5300 3200 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 5300 3200 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3100 5800 3100
Wire Wire Line
	5800 3000 6500 3000
Wire Wire Line
	6500 2900 5800 2900
Wire Wire Line
	5800 2800 6500 2800
Wire Wire Line
	6500 2700 5800 2700
Text GLabel 4700 2700 0    50   Input ~ 0
AD0
Text GLabel 4700 2800 0    50   Input ~ 0
AD1
Text GLabel 4700 2900 0    50   Input ~ 0
AD2
Text GLabel 4700 3000 0    50   Input ~ 0
AD3
Text GLabel 4700 3100 0    50   Input ~ 0
AD4
Text GLabel 4700 3200 0    50   Input ~ 0
AD5
Text GLabel 4700 3300 0    50   Input ~ 0
AD6
Text GLabel 4700 3400 0    50   Input ~ 0
AD7
Wire Wire Line
	4700 2700 4800 2700
Wire Wire Line
	4800 2800 4700 2800
Wire Wire Line
	4700 2900 4800 2900
Wire Wire Line
	4800 3000 4700 3000
Wire Wire Line
	4700 3100 4800 3100
Wire Wire Line
	4800 3200 4700 3200
Wire Wire Line
	4800 3400 4700 3400
Wire Wire Line
	4800 3300 4700 3300
Text GLabel 4700 3700 0    50   Input ~ 0
EN
Text GLabel 4700 3600 0    50   Input ~ 0
ALE
Wire Wire Line
	4700 3600 4800 3600
Wire Wire Line
	4800 3700 4700 3700
Wire Wire Line
	5300 4100 5300 4000
Wire Wire Line
	5300 2400 5300 2300
Wire Wire Line
	2750 2950 2650 2950
Wire Wire Line
	3750 2950 3850 2950
Wire Wire Line
	3850 3250 3750 3250
Wire Wire Line
	3750 3450 3850 3450
Wire Wire Line
	3850 3650 3750 3650
Wire Wire Line
	3750 3850 3850 3850
Text GLabel 2650 2850 0    50   Input ~ 0
OE
Text GLabel 6400 4500 0    50   Input ~ 0
OE
Wire Wire Line
	6900 4700 6900 4900
Text GLabel 6400 4400 0    50   Input ~ 0
EN
Wire Wire Line
	6500 4400 6400 4400
Wire Wire Line
	6400 4500 6500 4500
Text GLabel 2650 3150 0    50   Input ~ 0
AD0
Text GLabel 2650 3350 0    50   Input ~ 0
AD1
Text GLabel 2650 3550 0    50   Input ~ 0
AD2
Text GLabel 2650 3750 0    50   Input ~ 0
AD3
Text GLabel 3850 3950 2    50   Input ~ 0
AD4
Text GLabel 3850 3750 2    50   Input ~ 0
AD5
Text GLabel 3850 3550 2    50   Input ~ 0
AD6
Text GLabel 3850 3350 2    50   Input ~ 0
AD7
Wire Wire Line
	3850 3350 3750 3350
Wire Wire Line
	3750 3550 3850 3550
Wire Wire Line
	3850 3750 3750 3750
Wire Wire Line
	3750 3950 3850 3950
Wire Wire Line
	2750 3150 2650 3150
Wire Wire Line
	2750 2850 2650 2850
Wire Wire Line
	2650 3250 2750 3250
Wire Wire Line
	2750 3350 2650 3350
Wire Wire Line
	2650 3450 2750 3450
Wire Wire Line
	2750 3550 2650 3550
Wire Wire Line
	2650 3650 2750 3650
Wire Wire Line
	2750 3750 2650 3750
Wire Wire Line
	2650 3850 2750 3850
$Comp
L Memory_EPROM:27C512 U2
U 1 1 5D8692B0
P 6900 3600
F 0 "U2" H 6650 4800 50  0000 C CNN
F 1 "27C512" H 6650 4700 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm" H 6900 3600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0015.pdf" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
