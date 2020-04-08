# CONCEPT: C16A1
---
## Scope:
 -

The following requirements are specifically addressed in this mechanical design:

Availability of materials,
simple producibility of the individual parts,
torque requirements for the motor

The construction consists of easily obtainable semi-finished products:
    Threaded rods (M8),
    Sheet material (Dibond, acrylic glass, plywood in test setup),
    Ball bearing (608),
    Stepper motor NEMA17.
    
A belt is used for the drive, which is rolled on and off by the motor.
Previous designs either created too much friction on the belt or did not provide sufficient actuation force.
Therefore, a deflection system consisting of ball bearings is used in this design, through which the actuating force is theoretically doubled.

2020-03-28
    Started printing and mounting first mechanic approach, 
    added 608 bearings to actuator arm.
    I m new to gitlab, actual pics also an https://www.facebook.com/Thinkandhave

2020-03-29
    First running prototype, added 70mm ballbeared roller to actuator,
    made first elektronics from
        arduino mega 2560,
        RAMPS 1.4,
        A4988 stepper driver,
        smartlcd 2004 (with sdcard reader for breathing program),
    
    Prepared a version of marlin (https://marlinfw.org/) only for driving one axis (here X).
    Prepared some GCode to drive the machine.
    
2020-03-30
    Today I connected the prototype to my repetier server (on a respberry pi 3) and let it do 3 times 2000 breaths (15 bpm, in a bit more than 6 hours).
    The mechanics seems to be stable enough.
    With the GCode I can adjust seperately inflate- and deflate speed and movedistance,
    Whith a little tool in perl, the stresstest sequences can be generated as gcode.
    


16:22 03.04.2020
    In the lasts days the machine made serveral 10.000 breaths. I changed the stepperdriver to a TB6560 to get more current and less heat dissipation.
    I also began a protoype for the firmware. While testing the BME280 pressure sensor, needed an artificial lung to measure a pressure curve.
    I found out that the standard plug of a german milk carton tightli fits to the ambu bag.
    So I improvised what I needed by putting some rubberbands around the mikl carton.
    With some printed parts an a piece of flexible tube, i let my pressure measuring arduino plot the perssure in the artificial lung.
    
## Team Lead(s):
|GitLab|Slack|
|---|---|
| @thinkandhave | Martin Boettger |
| | |

## Slack Channels:
-

## Issue Labels:
-

## Current Collab Docs:

## Overview:

### Considerations:
