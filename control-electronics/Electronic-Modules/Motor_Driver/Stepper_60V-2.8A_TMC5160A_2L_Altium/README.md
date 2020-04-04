# Overview: 
**TMC5160A chipset based Stepper motor control up to 60V and 2.8A per phase.**
---
## Scope:
- Controlling a Stepper motor via SPI interface

## Designer:
Henno Esterhuyse  ( Open Source Ventilator - Velocity Team )

## Stackup
2 Layer PCB

## Designed with:
**Altium Designer**

## Source/previous design:
https://www.trinamic.com/support/eval-kits/details/tmc5160-bob/

## Changelog:
- Reduced the layer stackup to 2 by means of re-routing
- Updated Mosfets to 60V rated ones
- Updated TMC5160 to TMC5160A (footprint compatible)

## Known Issues:
- Voltage on stepper motor is now limited by both MOSFETs and TMC5160A
