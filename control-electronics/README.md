# Control Electronics for the Open Source Ventilator & Open Lung initiatives
---
## Scope:
- **To provide an electronic system to control, sense, and interface the Bag Valve Mask (BVM) ventilator**

- To develop electronic modules to be used as building blocks in the control electronics system design

## Readme Index:
- Definitions
- Directory Structure
- System Requirements Overview
- How to help
- System Block Diagram

## Definitions:
- **Electronic System (ES):** is a complete electronic product capable of delivering all the mandatory requirements for the functioning of the BMV. An ES can be integrated in a single Printed Circuit Board (PCB), or can be a motherboard-backplane connecting multiple electronic modules to deliver the final system functionality needs as a multiboard assembly *(i.e. an arduino board with multiple hats would be called "multiboard assembly");*

- **Electronic Module (EM):** is a self contained electronic device that delivers a specific requirement necessary for the functioning of the BMV *(i.e. an Arduino hat, like PoE, Relay driver, etc. would be called "Electronic Module")*

- **Concept specific**: either an EM or ES designed with a very specific mechanical concept in mind, following closely the requirements of that specific concept;

- **Concept agnostic**: either an EM or ES designed by following the ES design guidelines to be used on multiple mechanical concepts. These designs are made around the worst case scenario that's considered by the team;

## Directory structure:
- **Concept-specific-ES**: Directory into which ES designs developed for specific mechanical concepts should be placed, naming convention inside this folder must follow the same naming convention of the mechanical concept
    - **Controller-concept-1**
    - ...
    - **Controller-concept-xy**


- **Concept-agnostic-ES**: Directory into which ES designs developed to provide all the system requirements while being concept agnostic must be placed. A name must be assigned to each concept.
    - **Controller-abc**
    - ...
    - **Controller-def**


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

- **ES-design-guideline**


## Electronic system coordinator(s):
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
