# Motor Driver Electronic Module
---
## Scope:
- To drive an electrical motor capable of actuating the pneumatic system of the BVM. The motor can either be a Stepper, Hybrid, DC Brushed or Servo.

*Note: Almost all mechanical concepts so far (April 4) are working on Stepper Motors*

## Motors
The OSV-OL collaboration is currently working with NEMA-17 stepper motors as they are cheap and widely available in the market.

The specific NEMA-17 Motor currently in use can be found at the following link:
https://www.automationdirect.com/adc/shopping/catalog/motion_control/stepper_systems/dual_shaft_and_encoder_stepper_motors/stp-mtr-17048d

Modules must allow for drive voltages as high as 48V (which means that the module itself must be capable of handling 60V or more)

## Collaborating
- If a new design is started, please try to keep the dimensions highlighted in this readme, including connectors and their pitch.
- If you think you can compress the design, feel free to redo it in the same PCB outline while adding a SilkScreen square around your component placement, imagine this square to be your suggested PCB outline. This way, if your module will be chosen to be implemented in a single board ES, a reduction in footprint will be possible by trimming the edge of the module to your suggested pcb outline.


## Dimensions
<img src='control-electronics/Support-files/README_images/StepperMotEMdimension.PNG' height="400"></img>


