# Overview: 
**TMC5160A chipset based Stepper motor control up to 60V and 2.8A per phase.**
---
## Scope:
- Controlling a Stepper motor via SPI interface

## Designer:
Nadim Conti (Open Source Ventilator - Velocity Team )

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

## TODO
- redo layout to VM and VS as above 40V overheating will occour
- Pull back VM power plane and create low noise logic power plane
- Moving Logic VIN closer to the micro
- Redo V5_OUT layout to isolate gnd return path as written in datasheet
- ADD DIAGN1 signal ?

## Known Issues:
- Voltage on stepper motor is now limited by both MOSFETs and TMC5160A
