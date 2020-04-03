# Control Electronics for the Open Source Ventilator & Open Lung initiatives
---
## Scope
- **To provide an electronic system to control, sense, and interface the Bag Valve Mask (BVM) ventilator**

- To develop electronic modules to be used as building blocks in the control electronics system design

## Readme Index
- Definitions
- Overview
- Block Diagram
- Control Loop
- How to help
- Directory Structure



## Definitions
- **Electronic System (ES):** is a complete electronic product capable of delivering all the mandatory requirements for the functioning of the BMV. An ES can be integrated in a single Printed Circuit Board (PCB), or can be a motherboard-backplane connecting multiple electronic modules to deliver the final system functionality needs as a multiboard assembly *(i.e. an arduino board with multiple hats would be called "multiboard assembly");*

- **Electronic Module (EM):** is a self contained electronic device that delivers a specific requirement necessary for the functioning of the BMV *(i.e. an Arduino hat, like PoE, Relay driver, etc. would be called "Electronic Module")*

- **Concept specific**: either an EM or ES designed with a very specific mechanical concept in mind, following closely the requirements of that specific concept;

- **Concept agnostic**: either an EM or ES designed by following the ES design guidelines to be used on multiple mechanical concepts. These designs are made around the worst case scenario that's considered by the team;

- **User**: the medical figure responsible for setting and monitoring the ventilation of a patient

## Overview
The Electronics System is responsible for monitoring the respiratory status of a patient and provide ventilation support as defined by the user via a user interface.

The ES is divided into functional blocks (EM)s to ease development and collaboration. The division of a broader system into little sub modules facilitates the work of the designer by providing a very clear requirement and constraints to follow.
By keeping the constraints constant for all the versions a module might have, the integration in a complete ES at later stage is facilitated.

The ES monitors sensors and controls an electrical actuator to provide mechanical movement for the ventilation. As the movement is initiated, the ES closely follows the sensor EM to correct the motor actuation and follow the user predefined inputs.

The ES provides visual and auditory alarms in case certain monitored readings are outside the preferred range selected by the user, or in case of complete power failure during critical operation (ventilation).

The ES provides a redundant power supply line selection, with main and backup line, enabling hot swap operations of the primary line.

The ES provides a clear user interface, showing all the variables set by the user and their readings from the system. The interface should also show the time evolution of critical variables to be monitored.

## Block Diagram


## Directory structure
- **Concept-specific-ES**: Directory into which ES designs developed for specific mechanical concepts should be placed, naming convention inside this folder must follow the same naming convention of the mechanical concept
    - **Controller-concept-1**
    - ...
    - **Controller-concept-xy**
    - 


- **Concept-agnostic-ES**: Directory into which ES designs developed to provide all the system requirements while being concept agnostic must be placed. A name must be assigned to each concept.
    - **Controller-abc**
    - ...
    - **Controller-def**
    - 


- **Electronic-Modules**: Directory into which EM designs developed to provide a specific functionality must be placed. EM can be both agnostic and specific. When creating the sub directory in the respective category, the type must be highlighted shortly in the name of the directory itself.
    - Alarm
    - Power Regulation
    - Sensors
        - EM-2Flow-2Pressure
        - ...
    - User Interface
        - EM-Graph_480x320_UART
        - ...
        - EM-Graph_800x480_SPI
    - Motor Driver
        - EM-NEMA_17_12V
        - ...
        - EM-NEMA_23_48V
        - EM-Stepper-60V_2Amp
        - 

- **ES-design-guideline**


## Electronic system coordinator(s)
|GitLab|Slack|
|---|---|
|@nadimconti|@NadimConti|
| | |

## Slack Channels:
-

## Issue Labels:
- Sensor Hardware

## Current Collab Docs:

## Overview:
