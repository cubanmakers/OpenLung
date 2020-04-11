# Overview: 
**TMC5160A chipset based Stepper motor control up to 60V and 2.8A per phase.**
---
## Scope:
- Controlling a Stepper motor via SPI interface

## Designer:
Nadim Conti (Open Source Ventilator - Velocity Team )

## Overview on the design:
https://nadimconti.wordpress.com/2020/04/11/300w-stand-alone-stepper-motor-driver/

## Stackup
4 Layer PCB

## Designed with:
**Altium Designer**

## Source/previous design:
https://www.trinamic.com/support/eval-kits/details/tmc5160-bob/

## Changelog:

- redo pinout as header does not support 4Amp draw from 48V rail
- All capacitors to 63 or higher voltage rating
- remove electrolytic cap
- Remove 0 Ohm resistors to toggle TMC to STEP-DIR mode
- Mosfets (voltage, and check gate below 50nC)
- re-arrange CLOCK path to avoid splitting plane crossing (EMI-SI issues)
- redo layout to VM and VS as above 40V overheating will occour
- ADD DIAGN1 signal
- Moving Logic VIN closer to the micro
- Redo V5_OUT layout to isolate gnd return path as written in datasheet
- Rearrange position of headers to be at a perfect multiple of 0.1" to ease insertion in breadboard systems (33.02 mm = 13x 0.1")
- Shortened board by 2.5mm ca on longer side

## TODO

## Known Issues:
- Voltage on stepper motor is now limited by both MOSFETs and TMC5160A. To increase it an external gate driver configuration is required.
