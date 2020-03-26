# CONCEPT: Arduino-based Controller
---
## Scope:
- Hardware and Software related to the control of the machine, not including sensor software and housing of machine

## Team Leads:
|GitLab|Slack|
|---|---|
|@smsiebe|@Steve Siebert|
|@Eric-Montreal|@Eric Vinter|

## Slack Channels:
## Issue Labels:
- Controller Hardware
- Controller Software

## Current Collab Docs:

## Overview:
This controller concept is based around the work of [Eric Vinter](https://github.com/ermtl/Open-Source-Ventilator), which is conceptually around leveraging common maker components (arduinos over direct microchip, modules over discrete components) due to their availability, familiarity, and ease of integration. The P1A controller is designed to work with a stepper motor for the mechical squeezing of a BVM.  Those using alternative methods (such as a servo) is welcome to clone this concept and make the necessary modifications to the code and materials.

Shared between the variations of this concept (P1A1, P1A2, ...) would be the arduino code base (/arduino/OpenSourceVentilator.ino) and selection from the pool of MCUs, sensors, and actuators in the [Master Component List][mastercomponentlist.ods].  It's expected the variations of each controller concept will have significant differences in the human-machine-interface, the necessary differences in the arduino code to accomodiate those changes, but *NO* changes to the logic actual business logic of the ventilator itself.
