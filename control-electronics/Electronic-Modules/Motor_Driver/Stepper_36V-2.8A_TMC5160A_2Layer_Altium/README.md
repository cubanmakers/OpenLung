# Overview: 
**TMC5160 chipset based Stepper motor control up to 36V and 2.8A per phase.**
---
## Scope:
- Controlling a Stepper motor via SPI interface

## Designer:
Open Source Ventilator - Velocity Team 

## Stackup
2 Layer PCB

## Designed with:
**Altium Designer**

## Source/previous design:
https://www.trinamic.com/support/eval-kits/details/tmc5160-bob/

## Known Issues:
- Voltage on stepper motor is limited by the mosfets
- TMC5160 is discontinued (but can be replaced with TMC5160A)

## TMC5160 Limitations (solved with updated TMC5160A IC version): 
- *Successful completion of AT#1 tuning phase is not safely detected by the TMC5160. It will require multiple motor start / stop events to safely detect completion. Successful determination is mandatory for AT#2: Tuning of PWM_GRAD will not start when AT#1 has not completed. Successful completion of AT#1 and AT#2 only can be checked by monitoring PWM_SCALE_AUTO approaching 0 during AT#2 motion.*
