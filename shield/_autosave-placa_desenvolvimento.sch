EESchema Schematic File Version 4
EELAYER 30 0
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
L placa_desenvolvimento-rescue:74HC595-74xx U601
U 1 1 5EFC64F8
P 2800 4050
F 0 "U601" H 3000 4800 50  0000 C CNN
F 1 "74HC595" H 3000 4700 50  0000 C CNN
F 2 "placa_desenvolvimento:SOIC127P600X175-16N" H 2800 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2800 4050 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EFC78FE
P 2800 4950
F 0 "#PWR0101" H 2800 4700 50  0001 C CNN
F 1 "GND" H 2805 4777 50  0000 C CNN
F 2 "" H 2800 4950 50  0001 C CNN
F 3 "" H 2800 4950 50  0001 C CNN
	1    2800 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5EFC7C59
P 2200 3250
F 0 "#PWR0102" H 2200 3100 50  0001 C CNN
F 1 "+5V" H 2215 3423 50  0000 C CNN
F 2 "" H 2200 3250 50  0001 C CNN
F 3 "" H 2200 3250 50  0001 C CNN
	1    2200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3450 2800 3250
Wire Wire Line
	2800 3250 2200 3250
Text GLabel 2400 3650 0    50   Input ~ 0
SODATA
Text GLabel 2400 3850 0    50   Input ~ 0
SOCLK
Wire Wire Line
	2200 3250 1950 3250
Wire Wire Line
	1950 3250 1950 3950
Wire Wire Line
	1950 3950 2400 3950
Connection ~ 2200 3250
Wire Wire Line
	2800 4750 2800 4800
Wire Wire Line
	2800 4800 1950 4800
Wire Wire Line
	1950 4800 1950 4250
Wire Wire Line
	1950 4250 2400 4250
Connection ~ 2800 4800
Wire Wire Line
	2800 4800 2800 4950
Text GLabel 2400 4150 0    50   Input ~ 0
PEN
Text GLabel 3200 3650 2    50   Input ~ 0
QA
Text GLabel 3200 3750 2    50   Input ~ 0
QB
Text GLabel 3200 3850 2    50   Input ~ 0
QC
Text GLabel 3200 3950 2    50   Input ~ 0
QD
Text GLabel 3200 4050 2    50   Input ~ 0
QE
Text GLabel 3200 4150 2    50   Input ~ 0
QF
Text GLabel 3200 4250 2    50   Input ~ 0
QG
Text GLabel 3200 4350 2    50   Input ~ 0
QH
NoConn ~ 3200 4550
$Comp
L New_Library:NODEMCU U2
U 1 1 5F1FC7A6
P 5000 4250
F 0 "U2" H 5000 5417 50  0000 C CNN
F 1 "NODEMCU" H 5000 5326 50  0000 C CNN
F 2 "placa_desenvolvimento:MODULE_ZC563900" H 5000 4250 50  0001 L BNN
F 3 "NodeMcu Lua ESP8266 WIFI Internet of Things Network Development Module Board" H 5000 4250 50  0001 L BNN
F 4 "None" H 5000 4250 50  0001 L BNN "Field4"
F 5 "YKS" H 5000 4250 50  0001 L BNN "Field5"
F 6 "None" H 5000 4250 50  0001 L BNN "Field6"
F 7 "ZC563900" H 5000 4250 50  0001 L BNN "Field7"
F 8 "Unavailable" H 5000 4250 50  0001 L BNN "Field8"
	1    5000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F1FDA23
P 4300 3550
F 0 "#PWR0103" H 4300 3400 50  0001 C CNN
F 1 "+5V" H 4315 3723 50  0000 C CNN
F 2 "" H 4300 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F1FE0BD
P 5700 5150
F 0 "#PWR0104" H 5700 4900 50  0001 C CNN
F 1 "GND" H 5705 4977 50  0000 C CNN
F 2 "" H 5700 5150 50  0001 C CNN
F 3 "" H 5700 5150 50  0001 C CNN
	1    5700 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J1
U 1 1 5F2004F2
P 1500 1000
F 0 "J1" H 1557 1325 50  0000 C CNN
F 1 "Jack-DC" H 1557 1234 50  0000 C CNN
F 2 "placa_desenvolvimento:CUI_PJ-002A" H 1550 960 50  0001 C CNN
F 3 "~" H 1550 960 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D1
U 1 1 5F200E54
P 2150 900
F 0 "D1" H 2150 683 50  0000 C CNN
F 1 "BAT60J" H 2150 774 50  0000 C CNN
F 2 "placa_desenvolvimento:bta60j" H 2150 725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2150 900 50  0001 C CNN
	1    2150 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5F201E0A
P 2450 1050
F 0 "C1" H 2565 1096 50  0000 L CNN
F 1 "100n" H 2565 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2488 900 50  0001 C CNN
F 3 "~" H 2450 1050 50  0001 C CNN
	1    2450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 900  1800 900 
Wire Wire Line
	2300 900  2450 900 
$Comp
L power:VCC #PWR0105
U 1 1 5F202B84
P 2450 750
F 0 "#PWR0105" H 2450 600 50  0001 C CNN
F 1 "VCC" H 2465 923 50  0000 C CNN
F 2 "" H 2450 750 50  0001 C CNN
F 3 "" H 2450 750 50  0001 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 750  2450 900 
Connection ~ 2450 900 
$Comp
L power:GND #PWR0106
U 1 1 5F203AC2
P 1900 1150
F 0 "#PWR0106" H 1900 900 50  0001 C CNN
F 1 "GND" H 1905 977 50  0000 C CNN
F 2 "" H 1900 1150 50  0001 C CNN
F 3 "" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1100 1900 1100
Wire Wire Line
	1900 1100 1900 1150
$Comp
L power:GND #PWR0107
U 1 1 5F2045BD
P 2450 1300
F 0 "#PWR0107" H 2450 1050 50  0001 C CNN
F 1 "GND" H 2455 1127 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1200 2450 1300
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5F207F43
P 2200 7150
F 0 "J2" V 2127 7078 50  0000 C CNN
F 1 "Saida para rele" V 2036 7078 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 2200 7150 50  0001 C CNN
F 3 "~" H 2200 7150 50  0001 C CNN
	1    2200 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F20DE57
P 1800 6800
F 0 "#PWR0108" H 1800 6550 50  0001 C CNN
F 1 "GND" H 1805 6627 50  0000 C CNN
F 2 "" H 1800 6800 50  0001 C CNN
F 3 "" H 1800 6800 50  0001 C CNN
	1    1800 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 6800 1800 6950
$Comp
L power:+5V #PWR0109
U 1 1 5F20ECD2
P 2700 6800
F 0 "#PWR0109" H 2700 6650 50  0001 C CNN
F 1 "+5V" H 2715 6973 50  0000 C CNN
F 2 "" H 2700 6800 50  0001 C CNN
F 3 "" H 2700 6800 50  0001 C CNN
	1    2700 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6800 2700 6950
Text GLabel 1900 6950 1    50   Input ~ 0
QA
Text GLabel 2000 6950 1    50   Input ~ 0
QB
Text GLabel 2100 6950 1    50   Input ~ 0
QC
Text GLabel 2200 6950 1    50   Input ~ 0
QD
Text GLabel 2300 6950 1    50   Input ~ 0
QE
Text GLabel 2400 6950 1    50   Input ~ 0
QF
Text GLabel 2500 6950 1    50   Input ~ 0
QG
Text GLabel 2600 6950 1    50   Input ~ 0
QH
Text GLabel 5700 3850 2    50   Input ~ 0
SODATA
Text GLabel 5700 3650 2    50   Input ~ 0
SOCLK
Text GLabel 5700 3750 2    50   Input ~ 0
PEN
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5F21277C
P 4300 1050
F 0 "U1" H 4300 1292 50  0000 C CNN
F 1 "ld1117_5v" H 4300 1201 50  0000 C CNN
F 2 "placa_desenvolvimento:SOT223" H 4325 900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4300 1000 50  0001 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1050 4600 1050
$Comp
L Device:C C2
U 1 1 5F21494D
P 3400 1200
F 0 "C2" H 3515 1246 50  0000 L CNN
F 1 "100n" H 3515 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 1050 50  0001 C CNN
F 3 "~" H 3400 1200 50  0001 C CNN
	1    3400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1050 3400 1050
Wire Wire Line
	3400 1350 4300 1350
Connection ~ 4300 1350
$Comp
L power:GND #PWR0110
U 1 1 5F215B24
P 4300 1350
F 0 "#PWR0110" H 4300 1100 50  0001 C CNN
F 1 "GND" H 4305 1177 50  0000 C CNN
F 2 "" H 4300 1350 50  0001 C CNN
F 3 "" H 4300 1350 50  0001 C CNN
	1    4300 1350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 5F215FE7
P 3400 1050
F 0 "#PWR0111" H 3400 900 50  0001 C CNN
F 1 "VCC" H 3415 1223 50  0000 C CNN
F 2 "" H 3400 1050 50  0001 C CNN
F 3 "" H 3400 1050 50  0001 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
Connection ~ 3400 1050
$Comp
L power:+5V #PWR0112
U 1 1 5F21663A
P 5000 1050
F 0 "#PWR0112" H 5000 900 50  0001 C CNN
F 1 "+5V" H 5015 1223 50  0000 C CNN
F 2 "" H 5000 1050 50  0001 C CNN
F 3 "" H 5000 1050 50  0001 C CNN
	1    5000 1050
	1    0    0    -1  
$EndComp
Connection ~ 5000 1050
$Comp
L Device:R R1
U 1 1 5F218542
P 6150 1050
F 0 "R1" V 5943 1050 50  0000 C CNN
F 1 "220" V 6034 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 1050 50  0001 C CNN
F 3 "~" H 6150 1050 50  0001 C CNN
	1    6150 1050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5F21910B
P 6550 1200
F 0 "D2" V 6589 1082 50  0000 R CNN
F 1 "LED" V 6498 1082 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6550 1200 50  0001 C CNN
F 3 "~" H 6550 1200 50  0001 C CNN
	1    6550 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 1050 6300 1050
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5F21B407
P 3100 7150
F 0 "J3" V 3050 7150 50  0000 R CNN
F 1 "saidas digitais" V 2950 7450 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 3100 7150 50  0001 C CNN
F 3 "~" H 3100 7150 50  0001 C CNN
	1    3100 7150
	0    -1   -1   0   
$EndComp
Text GLabel 5700 3550 2    50   Input ~ 0
D0
Text GLabel 5700 3950 2    50   Input ~ 0
PWM
Text GLabel 5700 4150 2    50   Input ~ 0
D6
Text GLabel 5700 4050 2    50   Input ~ 0
D5
Text GLabel 5700 4250 2    50   Input ~ 0
D7
Text GLabel 5700 4350 2    50   Input ~ 0
D8
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5F21F81C
P 3750 7150
F 0 "J6" V 3700 7150 50  0000 R CNN
F 1 "Conn_01x02_Male" V 3600 7450 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3750 7150 50  0001 C CNN
F 3 "~" H 3750 7150 50  0001 C CNN
	1    3750 7150
	0    -1   -1   0   
$EndComp
Text GLabel 3750 6950 1    50   Input ~ 0
RX
Text GLabel 3850 6950 1    50   Input ~ 0
TX
Text GLabel 5700 4550 2    50   Input ~ 0
RX
Text GLabel 5700 4650 2    50   Input ~ 0
TX
Text GLabel 4300 3750 0    50   Input ~ 0
RST
Text GLabel 4300 3950 0    50   Input ~ 0
EN
Text GLabel 4300 4150 0    50   Input ~ 0
A0
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5F227552
P 1500 7150
F 0 "J5" V 1450 7150 50  0000 R CNN
F 1 "Conn_01x01_Male" V 1350 7450 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1500 7150 50  0001 C CNN
F 3 "~" H 1500 7150 50  0001 C CNN
	1    1500 7150
	0    -1   -1   0   
$EndComp
Text GLabel 1500 6950 1    50   Input ~ 0
A0
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F22A370
P 900 7150
F 0 "J4" V 850 7100 50  0000 R CNN
F 1 "Conn_01x02_Male" V 750 7600 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 900 7150 50  0001 C CNN
F 3 "~" H 900 7150 50  0001 C CNN
	1    900  7150
	0    -1   -1   0   
$EndComp
Text GLabel 900  6950 1    50   Input ~ 0
RST
Text GLabel 1000 6950 1    50   Input ~ 0
EN
$Comp
L Connector:Conn_01x06_Male J8
U 1 1 5F230566
P 5150 7150
F 0 "J8" V 5100 7150 50  0000 R CNN
F 1 "Conn_01x06_Male" V 5000 7400 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5150 7150 50  0001 C CNN
F 3 "~" H 5150 7150 50  0001 C CNN
	1    5150 7150
	0    -1   -1   0   
$EndComp
Text GLabel 4950 6950 1    50   Input ~ 0
CLK
Text GLabel 4300 4450 0    50   Input ~ 0
CLK
Text GLabel 5050 6950 1    50   Input ~ 0
CMD
Text GLabel 4300 4550 0    50   Input ~ 0
CMD
Text GLabel 4300 4650 0    50   Input ~ 0
SD0
Text GLabel 4300 4750 0    50   Input ~ 0
SD1
Text GLabel 4300 4850 0    50   Input ~ 0
SD2
Text GLabel 4300 4950 0    50   Input ~ 0
SD3
Text GLabel 5150 6950 1    50   Input ~ 0
SD0
Text GLabel 5250 6950 1    50   Input ~ 0
SD1
Text GLabel 5350 6950 1    50   Input ~ 0
SD2
Text GLabel 5450 6950 1    50   Input ~ 0
SD3
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J9
U 1 1 5F2355F9
P 6150 6900
F 0 "J9" H 6200 7217 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 6200 7126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 6150 6900 50  0001 C CNN
F 3 "~" H 6150 6900 50  0001 C CNN
	1    6150 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5F237546
P 6450 6800
F 0 "#PWR0113" H 6450 6650 50  0001 C CNN
F 1 "+5V" V 6465 6928 50  0000 L CNN
F 2 "" H 6450 6800 50  0001 C CNN
F 3 "" H 6450 6800 50  0001 C CNN
	1    6450 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F23802C
P 5800 7200
F 0 "#PWR0114" H 5800 6950 50  0001 C CNN
F 1 "GND" H 5805 7027 50  0000 C CNN
F 2 "" H 5800 7200 50  0001 C CNN
F 3 "" H 5800 7200 50  0001 C CNN
	1    5800 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7100 5800 7100
Wire Wire Line
	5800 7100 5800 7200
Wire Wire Line
	5950 7000 5800 7000
Wire Wire Line
	5800 7000 5800 7100
Connection ~ 5800 7100
Wire Wire Line
	5950 6900 5800 6900
Wire Wire Line
	5800 6900 5800 7000
Connection ~ 5800 7000
Wire Wire Line
	5950 6800 5800 6800
Wire Wire Line
	5800 6800 5800 6900
Connection ~ 5800 6900
$Comp
L power:+3.3V #PWR0115
U 1 1 5F23A6DB
P 6450 6900
F 0 "#PWR0115" H 6450 6750 50  0001 C CNN
F 1 "+3.3V" V 6465 7028 50  0000 L CNN
F 2 "" H 6450 6900 50  0001 C CNN
F 3 "" H 6450 6900 50  0001 C CNN
	1    6450 6900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5F23BD5F
P 6450 7000
F 0 "#PWR0116" H 6450 6850 50  0001 C CNN
F 1 "+5V" V 6465 7128 50  0000 L CNN
F 2 "" H 6450 7000 50  0001 C CNN
F 3 "" H 6450 7000 50  0001 C CNN
	1    6450 7000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5F23CA07
P 6450 7100
F 0 "#PWR0117" H 6450 6950 50  0001 C CNN
F 1 "+3.3V" V 6465 7228 50  0000 L CNN
F 2 "" H 6450 7100 50  0001 C CNN
F 3 "" H 6450 7100 50  0001 C CNN
	1    6450 7100
	0    1    1    0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5F23D1A9
P 8400 1500
F 0 "BZ1" H 8552 1529 50  0000 L CNN
F 1 "Buzzer" H 8552 1438 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 8375 1600 50  0001 C CNN
F 3 "~" V 8375 1600 50  0001 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 5F23DE64
P 8300 1250
F 0 "#PWR0118" H 8300 1100 50  0001 C CNN
F 1 "+5V" H 8315 1423 50  0000 C CNN
F 2 "" H 8300 1250 50  0001 C CNN
F 3 "" H 8300 1250 50  0001 C CNN
	1    8300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1250 8300 1400
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5F23EF13
P 8200 2050
F 0 "Q1" H 8390 2096 50  0000 L CNN
F 1 "2N2219" H 8390 2005 50  0000 L CNN
F 2 "placa_desenvolvimento:SOT95P240X120-3N" H 8400 1975 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 8200 2050 50  0001 L CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1600 8300 1850
$Comp
L Device:R R2
U 1 1 5F241148
P 7650 2050
F 0 "R2" V 7443 2050 50  0000 C CNN
F 1 "4K7" V 7534 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7580 2050 50  0001 C CNN
F 3 "~" H 7650 2050 50  0001 C CNN
	1    7650 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2050 7800 2050
$Comp
L power:GND #PWR0119
U 1 1 5F2421BD
P 8300 2500
F 0 "#PWR0119" H 8300 2250 50  0001 C CNN
F 1 "GND" H 8305 2327 50  0000 C CNN
F 2 "" H 8300 2500 50  0001 C CNN
F 3 "" H 8300 2500 50  0001 C CNN
	1    8300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2250 8300 2500
Text GLabel 7350 2050 0    50   Input ~ 0
PWM
Wire Wire Line
	7500 2050 7350 2050
$Comp
L Transistor_BJT:2N2219 Q5
U 1 1 5F24EDEC
P 10050 4700
F 0 "Q5" H 10240 4746 50  0000 L CNN
F 1 "2N2219" H 10240 4655 50  0000 L CNN
F 2 "placa_desenvolvimento:SOT95P240X120-3N" H 10250 4625 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 10050 4700 50  0001 L CNN
	1    10050 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F24EDF3
P 9500 4700
F 0 "R8" V 9293 4700 50  0000 C CNN
F 1 "4K7" V 9384 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9430 4700 50  0001 C CNN
F 3 "~" H 9500 4700 50  0001 C CNN
	1    9500 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 4700 9650 4700
$Comp
L power:GND #PWR0120
U 1 1 5F24EDFA
P 10150 5350
F 0 "#PWR0120" H 10150 5100 50  0001 C CNN
F 1 "GND" H 10155 5177 50  0000 C CNN
F 2 "" H 10150 5350 50  0001 C CNN
F 3 "" H 10150 5350 50  0001 C CNN
	1    10150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4700 9200 4700
Text GLabel 9200 4700 0    50   Input ~ 0
D8
$Comp
L Device:R R10
U 1 1 5F2516D2
P 10150 5100
F 0 "R10" H 10080 5054 50  0000 R CNN
F 1 "4k7" H 10080 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10080 5100 50  0001 C CNN
F 3 "~" H 10150 5100 50  0001 C CNN
	1    10150 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 4950 10150 4900
Wire Wire Line
	10150 5350 10150 5250
Text GLabel 10500 4950 2    50   Input ~ 0
SD4_5V
Wire Wire Line
	10500 4950 10150 4950
Connection ~ 10150 4950
$Comp
L power:+5V #PWR0121
U 1 1 5F25B389
P 10150 4350
F 0 "#PWR0121" H 10150 4200 50  0001 C CNN
F 1 "+5V" H 10165 4523 50  0000 C CNN
F 2 "" H 10150 4350 50  0001 C CNN
F 3 "" H 10150 4350 50  0001 C CNN
	1    10150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4350 10150 4500
$Comp
L Transistor_BJT:2N2219 Q4
U 1 1 5F260AB3
P 10050 3150
F 0 "Q4" H 10240 3196 50  0000 L CNN
F 1 "2N2219" H 10240 3105 50  0000 L CNN
F 2 "placa_desenvolvimento:SOT95P240X120-3N" H 10250 3075 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 10050 3150 50  0001 L CNN
	1    10050 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F260AB9
P 9500 3150
F 0 "R7" V 9293 3150 50  0000 C CNN
F 1 "4K7" V 9384 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9430 3150 50  0001 C CNN
F 3 "~" H 9500 3150 50  0001 C CNN
	1    9500 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 3150 9650 3150
$Comp
L power:GND #PWR0122
U 1 1 5F260AC0
P 10150 3800
F 0 "#PWR0122" H 10150 3550 50  0001 C CNN
F 1 "GND" H 10155 3627 50  0000 C CNN
F 2 "" H 10150 3800 50  0001 C CNN
F 3 "" H 10150 3800 50  0001 C CNN
	1    10150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3150 9200 3150
Text GLabel 9200 3150 0    50   Input ~ 0
D7
$Comp
L Device:R R9
U 1 1 5F260AC8
P 10150 3550
F 0 "R9" H 10080 3504 50  0000 R CNN
F 1 "4k7" H 10080 3595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10080 3550 50  0001 C CNN
F 3 "~" H 10150 3550 50  0001 C CNN
	1    10150 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 3400 10150 3350
Wire Wire Line
	10150 3800 10150 3700
Text GLabel 10500 3400 2    50   Input ~ 0
SD3_5V
Wire Wire Line
	10500 3400 10150 3400
Connection ~ 10150 3400
$Comp
L power:+5V #PWR0123
U 1 1 5F260AD3
P 10150 2800
F 0 "#PWR0123" H 10150 2650 50  0001 C CNN
F 1 "+5V" H 10165 2973 50  0000 C CNN
F 2 "" H 10150 2800 50  0001 C CNN
F 3 "" H 10150 2800 50  0001 C CNN
	1    10150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2800 10150 2950
Text GLabel 3300 6950 1    50   Input ~ 0
SD4_5V
Text GLabel 3200 6950 1    50   Input ~ 0
SD3_5V
Text GLabel 3100 6950 1    50   Input ~ 0
D6
Text GLabel 3000 6950 1    50   Input ~ 0
D5
Text GLabel 2900 6950 1    50   Input ~ 0
D0
$Comp
L power:+3.3V #PWR0128
U 1 1 5F26EBE6
P 5700 3350
F 0 "#PWR0128" H 5700 3200 50  0001 C CNN
F 1 "+3.3V" H 5715 3523 50  0000 C CNN
F 2 "" H 5700 3350 50  0001 C CNN
F 3 "" H 5700 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1050 6000 1050
Wire Wire Line
	4300 1350 5000 1350
$Comp
L Device:C C3
U 1 1 5F2A4221
P 5000 1200
F 0 "C3" H 5115 1246 50  0000 L CNN
F 1 "10n" H 5115 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 1050 50  0001 C CNN
F 3 "~" H 5000 1200 50  0001 C CNN
	1    5000 1200
	1    0    0    -1  
$EndComp
Connection ~ 5000 1350
Wire Wire Line
	5000 1350 6550 1350
NoConn ~ 5700 4850
NoConn ~ 5700 4950
$Comp
L placa_desenvolvimento-rescue:irf640 Q?
U 1 1 5F230D84
P 7900 5250
F 0 "Q?" H 8104 5296 50  0000 L CNN
F 1 "irf640" H 8104 5205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8100 5175 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7900 5250 50  0001 L CNN
	1    7900 5250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
