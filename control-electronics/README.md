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
<img src='control-electronics/Support-files/README_images/OSV-ES_Block_diagram-3-april.png' height="700"></img>

A Guideline of the electronic system block diagram is here shown. Blocks unrelated to the electronics are not included. The pneumatic system and patient blocks are shown only for reference as the system, at least in its high level hardware architecture, is patient and pneumatic system agnostic. Blocks are coloured to highlight different areas of development.The control loop is also highlighted.

## Control Loop
The control loop, also identified as “Feedback Loop”, is the loop that defines the system behaviour during ventilation.

A closed loop control is the best way to ensure the system is operating safely and by respecting all the settings.

An example of closed loop functioning is here detailed:
1. The User (Medical responsible) sets a MODE of operation, pressure and volume data in the input/output interface
2. The Interface communicates all the data to start the ventilation to the MCU.
3. The MCU computes the sequence of movements to be done by the motor to achieve the desired behaviour, based on pre-calibrated reference variables, and outputs a trajectory stored in the MCU.
4. The MCU activates motion of the motor by issuing commands to the Electrical Motor Control.
5. The Motor control commands the stepper motor accordingly.
6. The stepper motor compresses-depresses the pneumatic system providing ventilation to the patient.
7. The pressure sensors connected to the pneumatic circuit provide feedback on the current pressure and volume being transferred in the patient’s lungs.
8. The MCU reads the sensors and computes if the system is following the pre-computed trajectory.
9. The MCU computes the correction (if needed) to keep the system on trajectory and goes to step 4.
10. Interrupt: if new commands are being issued by the Input/Output panel, the MCU immediately computes the new trajectory from the current point and goes to step 4.

## How to help

1.  Give a brief look to the task list below. This will give you an idea of what tasks are waiting someone to develop them, and what are currently being worked on / are considered done and ready for manufacturing.
2.  Identify the taks you would like to work on.
3.  Consult the [System Design Specification Document](https://docs.google.com/document/d/1OEBElTORT_hLxyU2gSYZyEBKLmrnHysd38e4w1xVEWE/edit?usp=sharing) to gain insight on what are the detailed requirements for that task.
4.  If you have any question, doubt or suggestion, contact one of the coordinators.
5.  Start developing, fork this directory, upload your files, and request a merge!

## Tools

#### PCB design CAD:  
- **Altium Designer 20 is strongly preferred**, a free trial period of 30 days can be requested when downloading the software for the first time.
- **KiCAD** is accepted, but the main development work is currently being done under Altium Designer.

#### PCB Simulation tools:
- If you need to simulate anything, **Saturn PCB toolkit** is a nice and easy place where to start.

## Task List

* [ ]  Motherboard design (Altium 20) (design ongoing...)
* [x]  Motor Control Board Design (Altium 20)
* [ ]  Alarm Board (Altium 20) (design ongoing...)
* [x]  Power Regulation, protection and selection Board (Altium 20) (design done)
* [ ]  Sensor Board (Altium 20)
* [ ]  Battery Management System Board (Altium 20)



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

- **Support-files** Anything to support the electronics control development


## Electronic system coordinator(s)
|GitLab|Slack|
|---|---|
|@nadimconti|@NadimConti|
| | |

## Slack Channels:
- design-hardware
- ele_control-systems
