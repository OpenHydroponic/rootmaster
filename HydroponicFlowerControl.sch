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
L RF_Module:ESP32-WROOM-32D U?
U 1 1 614B95A6
P 2450 2250
F 0 "U?" H 2450 3831 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 2450 3740 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2450 750 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2150 2300 50  0001 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
Text GLabel 1850 1050 0    50   Input ~ 0
RESET
$Comp
L power:+3.3V #PWR?
U 1 1 614BA1AF
P 800 750
F 0 "#PWR?" H 800 600 50  0001 C CNN
F 1 "+3.3V" H 815 923 50  0000 C CNN
F 2 "" H 800 750 50  0001 C CNN
F 3 "" H 800 750 50  0001 C CNN
	1    800  750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614BAA4E
P 800 1650
F 0 "#PWR?" H 800 1400 50  0001 C CNN
F 1 "GND" H 805 1477 50  0000 C CNN
F 2 "" H 800 1650 50  0001 C CNN
F 3 "" H 800 1650 50  0001 C CNN
	1    800  1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614BB550
P 800 1400
F 0 "C?" H 915 1446 50  0000 L CNN
F 1 "C" H 915 1355 50  0000 L CNN
F 2 "" H 838 1250 50  0001 C CNN
F 3 "~" H 800 1400 50  0001 C CNN
	1    800  1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614BBBB4
P 800 950
F 0 "R?" H 870 996 50  0000 L CNN
F 1 "12k" H 870 905 50  0000 L CNN
F 2 "" V 730 950 50  0001 C CNN
F 3 "~" H 800 950 50  0001 C CNN
	1    800  950 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 614BC950
P 1150 1350
F 0 "SW?" V 1104 1498 50  0000 L CNN
F 1 "SW_Push" V 1195 1498 50  0000 L CNN
F 2 "" H 1150 1550 50  0001 C CNN
F 3 "~" H 1150 1550 50  0001 C CNN
	1    1150 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	800  1550 800  1650
Wire Wire Line
	800  750  800  800 
Text GLabel 750  1150 0    50   Input ~ 0
RESET
Wire Wire Line
	800  1100 800  1150
Wire Wire Line
	750  1150 800  1150
Connection ~ 800  1150
Wire Wire Line
	800  1150 800  1250
Wire Wire Line
	800  1150 1150 1150
Wire Wire Line
	1150 1550 800  1550
Connection ~ 800  1550
$Comp
L Device:R R?
U 1 1 614BFB32
P 3250 850
F 0 "R?" H 3320 896 50  0000 L CNN
F 1 "5k" H 3320 805 50  0000 L CNN
F 2 "" V 3180 850 50  0001 C CNN
F 3 "~" H 3250 850 50  0001 C CNN
	1    3250 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 614C0433
P 3250 700
F 0 "#PWR?" H 3250 550 50  0001 C CNN
F 1 "+3.3V" H 3265 873 50  0000 C CNN
F 2 "" H 3250 700 50  0001 C CNN
F 3 "" H 3250 700 50  0001 C CNN
	1    3250 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1050 3250 1050
Wire Wire Line
	3250 1050 3250 1000
$Comp
L Device:C C?
U 1 1 614C0E1B
P 650 2250
F 0 "C?" H 765 2296 50  0000 L CNN
F 1 "100uF" H 765 2205 50  0000 L CNN
F 2 "" H 688 2100 50  0001 C CNN
F 3 "~" H 650 2250 50  0001 C CNN
	1    650  2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614C1217
P 950 2250
F 0 "C?" H 1065 2296 50  0000 L CNN
F 1 "1uF" H 1065 2205 50  0000 L CNN
F 2 "" H 988 2100 50  0001 C CNN
F 3 "~" H 950 2250 50  0001 C CNN
	1    950  2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2100 800  2100
Wire Wire Line
	650  2400 800  2400
$Comp
L power:GND #PWR?
U 1 1 614C19A0
P 800 2500
F 0 "#PWR?" H 800 2250 50  0001 C CNN
F 1 "GND" H 805 2327 50  0000 C CNN
F 2 "" H 800 2500 50  0001 C CNN
F 3 "" H 800 2500 50  0001 C CNN
	1    800  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2400 800  2500
Connection ~ 800  2400
Wire Wire Line
	800  2400 950  2400
$Comp
L power:+3.3V #PWR?
U 1 1 614C1EB0
P 800 2050
F 0 "#PWR?" H 800 1900 50  0001 C CNN
F 1 "+3.3V" H 815 2223 50  0000 C CNN
F 2 "" H 800 2050 50  0001 C CNN
F 3 "" H 800 2050 50  0001 C CNN
	1    800  2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2050 800  2100
Connection ~ 800  2100
Wire Wire Line
	800  2100 950  2100
$Comp
L power:+3.3V #PWR?
U 1 1 614C2CF5
P 2450 750
F 0 "#PWR?" H 2450 600 50  0001 C CNN
F 1 "+3.3V" H 2465 923 50  0000 C CNN
F 2 "" H 2450 750 50  0001 C CNN
F 3 "" H 2450 750 50  0001 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 750  2450 850 
$Comp
L power:GND #PWR?
U 1 1 614C35E2
P 2450 3700
F 0 "#PWR?" H 2450 3450 50  0001 C CNN
F 1 "GND" H 2455 3527 50  0000 C CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3650 2450 3700
$Comp
L Device:R R?
U 1 1 614C87E4
P 3400 1250
F 0 "R?" V 3193 1250 50  0000 C CNN
F 1 "5k" V 3284 1250 50  0000 C CNN
F 2 "" V 3330 1250 50  0001 C CNN
F 3 "~" H 3400 1250 50  0001 C CNN
	1    3400 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1250 3250 1250
$Comp
L power:GND #PWR?
U 1 1 614CAF61
P 3550 1250
F 0 "#PWR?" H 3550 1000 50  0001 C CNN
F 1 "GND" H 3555 1077 50  0000 C CNN
F 2 "" H 3550 1250 50  0001 C CNN
F 3 "" H 3550 1250 50  0001 C CNN
	1    3550 1250
	1    0    0    -1  
$EndComp
Wire Notes Line
	3750 500  3750 4200
Wire Notes Line
	3750 4200 500  4200
Text Notes 600  4100 0    79   ~ 16
ESP32
Text Notes 6150 1250 0    50   ~ 0
Main pump
Text Notes 6150 1400 0    50   ~ 0
Drain pump
Text Notes 6150 1550 0    50   ~ 0
Flow in
Text Notes 6150 1700 0    50   ~ 0
Flow pump
Text Notes 6150 1850 0    50   ~ 0
Nutrition pump
Text Notes 6150 2000 0    50   ~ 0
EC value
Text Notes 6150 2150 0    50   ~ 0
Tank low
Text Notes 6150 2300 0    50   ~ 0
Temp sensor
$Comp
L Analog_ADC:ADS1015IDGS U?
U 1 1 614CF215
P 9700 1600
F 0 "U?" H 9700 2281 50  0000 C CNN
F 1 "ADS1015IDGS" H 9700 2190 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 9700 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1015.pdf" H 9650 700 50  0001 C CNN
	1    9700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 615214F8
P 9700 2000
F 0 "#PWR?" H 9700 1750 50  0001 C CNN
F 1 "GND" H 9705 1827 50  0000 C CNN
F 2 "" H 9700 2000 50  0001 C CNN
F 3 "" H 9700 2000 50  0001 C CNN
	1    9700 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
