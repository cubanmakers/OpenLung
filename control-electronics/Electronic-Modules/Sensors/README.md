# Pneumatic Sensors Electronic Module
---
## Scope:
- To measure Airflow and pressure going and leaving the patient lungs. Temperature and Humidity readings of the airway path could be added, but are not mandatory to have.

*Note: the system requires 4 sensors in its most demanding design, 2x flow sensors and 2x pressure sensors*

## Sensors

The OSV-OL collaboration is currently working with differential pressure based flow sensors and gauge pressure sensors.

Absolute pressure sensors are not considered as the intrinsic nature of these sensors would lead to high errors in the airway pressure readings.

As differential sensors can also be used as gauge sensors (by leaving one end open to ambient air), it is suggested to consider using only differential sensors as the higher volume could lead to lower final BOM cost.

Reference FLOW-SENSOR: Sensirion SFM3000 (Intake), Sensirion SFM3200 (washable)


More information on sensors requirements can be found in the System Design specification requirement document at the following link:
https://docs.google.com/document/d/1OEBElTORT_hLxyU2gSYZyEBKLmrnHysd38e4w1xVEWE/edit?usp=sharing

Modules should, if possible, allow for either digital (SPI/I2C) and analog inteface.

## Collaborating
- If a new design is started, please try to keep the dimensions highlighted in this readme, including connectors and their pitch.
- If you think you can compress the design, feel free to redo it in the same PCB outline while adding a SilkScreen square around your component placement, imagine this square to be your suggested PCB outline. This way, if your module will be chosen to be implemented in a single board ES, a reduction in footprint will be possible by trimming the edge of the module to your suggested pcb outline.


## Dimensions
<img src='control-electronics/Support-files/README_images/sensorEMdimension.png' height="400"></img>


