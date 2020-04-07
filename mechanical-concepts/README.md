# Mechanical Concepts for OpenLung Open Source Ventilator initiatives

---

## Scope

- **To provide a mechanical concept to depress the Bag Valve Mask (BVM) to provide emergency ventilator function.**

- To develop a mechanical concept hardware module(s) to be used as building blocks in the overall ventilator system design.

## Readme Index

- Definitions
- Overview
- Design Requirements
- Mechanical Concepts in Testing
- How to Help
- Task List
- Directory Structure
- Tools

## Definitions

- **Mechanical Concept (MC):** is a complete mechanical hardware product capable of delivering all the mandatory requirements for the functioning of the BMV depression. An MC can have differing depression mechanisms, design philosophies, manufacturing techniques. *(i.e. A lead screw actuation with a flat stock manufacturing method for BVM containment method would be called a "Mechanical Concept".);*
- **Depression Mechanism (DM):** refers to the force transfer method employed to compress or depress the BVM *(i.e. Geared, Cam, or Lead Screw actuators are types of "Depression Mechanisms");*
- **Manufacturing Technique (MT)**: refers to the anticipated method (or methods) that can be used to manufacture an MC *(i.e. 3D printing, CNC, Laser Cut, Metal stamping, etc. are types of "Manufacturing Techniques");*
- **User**: the medical figure responsible for setting and monitoring the ventilation of a patient.

## Overview

- Medical ventilators are complex machines—their manufacture require many hours of intensive labor. 
- Manual resuscitators, such as the bag valve mask (BVM), are frequently used by medical professionals in emergency situations.
- There exists a large standing supply of them and they are easily manufactured.
- The automation of such devices will serve as an emergency alternative to the standard medical ventilator.
- The goal is to design an MC that can be mass produced at a faster rate than a standard medical ventilator using distributed MTs — in saving lives time is of the essence.

## Design Requirements

- [*Work In Progress*] Design Requirements are under development [here](/requirements).

## Mechanical Concepts in Testing

| Image | Concept | Issue Label | Team Lead(s) |
|---|---|---|---|
| | C6A1 | BELT | David O'Reilly (@dor2020) |
| | C8A3 | FLAPPER | Colin O'Brien |
| | C8A3.2 | MAKER | Colin O'Brien |
| | C8A4 | CLAW | David O'Reilly (@dor2020) |
| | C13A1 | JAWS | Dugan Karnazes |

## How to help

### Newcomers

1.  Give a brief look to the task list below. This will give you an idea of what tasks are waiting someone to develop them, and what are currently being worked on / are considered done and ready for manufacturing.
2.  Identify the task you would like to work on.
3.  Consult the Design Requirements to gain insight on what are the detailed requirements for that task.
4.  If you have any question, doubt or suggestion, contact one of the coordinators.
5.  Start developing, fork this directory, upload your files, and request a merge!

### New Mechanical Concept (MC) Contribution

1. If you have a new MC, please create a copy of the template mechanical concept directory in your fork of this repository. *(THIS IS VERY IMPORTANT!)*
2. Rename the directory following the proper versioning convention outlined here. *(i.e. at the time of writing the next concept would be C16A1, please triple check and ask coordinator for clarity if needed)*
3. Complete all of the necessary fields in your newly created "Readme.md" file. *(This should include notes, design justifications, team members, and other relevant information.)*
4. Add your design files and any images you would like to publish to your forked directory.
5. Submit a Merge Request against the master OpenLung project.

### Notes on Contributing

- In this project, there are over 2,000 individuals contributing at any one time in various formats.
- With that said, there is a lot of management that has to happen in order for that to be productive.
- In this repository, you'll notice that our concepts directory has various concept directories within it.
- The requirements in each directory will be contained in of the README.md and team leads, identified by Project Management coordinators and listed in the README, can submit merge requests in order to have their progress updated to the public and rest of the project.
- As this is a team effort, team leaders are expected to take note of the status of existing concepts, as well as talk with Project Management about what they can be doing.
- When you make an update to your concept, if it is a replacement of the old concept, please push the old one to the _retired-concepts directory, and name the new concept with the new concept number (x+1).
- Also, be sure to update the README on the new version with the information required in the README by Project Management.
- This helps everyone to stay in the same train of thought and allows us to better support you and update the community.
- **Each team needs to keep an eye on their associated labels in issues.**
- Required fields for Concept READMEs can be found in [empty_readme.md](concepts/empty_readme.md)

## Task List

* [ ]  
* [ ]  

## Directory Structure

- **ventilator-concept-X**: Directory into which MC designs developed should be placed, naming convention inside this folder must follow the same naming convention outlined here. X follows a sequential numbering progression.
	- **CXYZ**: Directory naming convention where: X = subsequent ventilator concept number, Y = subsequent creator identifier, and Z = concept iteration number.

- For example:
    - **CXA1**: The first iteration of "ventilator-concept-X" by a new creator (A).
    - ...
    - **CXAZ**: The Z-th iteration of "ventilator-concept-X" by the same creator (A).

    - **CXB1**: The first iteration of "ventilator-concept-X" by a different creator (B).
    - ...
	- **CXZ1**: The Z-eth iteration of "ventilator-concept-X" by a different creator (Z).

## Tools

#### Computer Automated Design (CAD):
- **SolidWorks is strongly preferred.**
- [Fusion 360](https://www.autodesk.com/products/fusion-360/mechanical-engineer)
- [OnShape](https://www.onshape.com/)
- [A360](https://www.autodesk.com/products/a360/features) - A360 project collaboration software helps teams view, share, find, and review files in a centralized workspace.
- [FreeCADWeb](https://www.freecadweb.org/) - 3D parametric modeler for free

## Mechanical Concept Coordinator(s)

| Name | GitLab | Slack |
|---|---|---|
| Andrew Finkle | @finks | @AndrewFinkle |
| Jonathon Kemp | @jd18 | @JonathonKemp |
| Trevor Smale | @TrevorSmale | @TrevorSmale |
| | | |

## Associated Issue Labeling

- Ventilator Hardware

## Slack Channels

- design-hardware