# CONCEPT 11: Clamshell
---
## Scope: Air-piston driven BVM Compressor
 - Retain all advantages of OxVent (direct pressure manipulation, simplicity)
 - Add ability to hot-swap and/or manually vent with BVM (pop open clamshell or Y-valve a manual bag)
 - Remove need for Compressed Air/O2 Supply with motor-driven piston
 - Decrease footprint with custom clamshell that contains UI and can be hung on IV stand. 
 - Piston/motor/HW could be collocated or separated by air hose.
 
## Team Lead(s):

| Team     | Gitlab   | Slack            |
| ---      |  ------  |-----------------:|
|  Acme    |    @jd18 | @ Jonathan Kemp   |
|         |           |               |


## Slack Channels: 
- #compairconceptventilator
- #design-hardware

## Issue Labels:
-

## Current Collab Docs:

## Overview:
* A simple form-fitting two-piece "Clamshell" printed or fabricated close to geometry of BVM in place of the box in Concept 10 
    * reduces latency, airflow needs, quickly producible/buildable in mass Quantities
* Motor-driven air piston used to pressurize the vessel, eliminating need for compressed air 
    * (or compressed air input as an option)
* Compressed Air "spring" is largely conserved and balanced with a mechanical spring, minimizing strain on the motor used to move the Piston.
* Packaging allows entire assembly to have one cleanable shell (only I/O are control interface, vent tubes, power cable) and could hang on IV stand or any other cart. 
* Direct, reliable control of BVM Pressure/Volume
* minimal load/friction points 
    * Only replacement/maintenance is the piston seals, probably beyond timeframe of current crisis. 
    * Gears follow 3dPrinter design standards, XXXMM cycles.
    * Standard bushings/mounts for motors

Notes/Update 5 Apr 2020: 
* Friction in pipe and leaks (some by design) can make the design much more fluid 
    * motion is often more important than piston position to induce pressure
    * two-way valve added at piston head to make sure it never pulls a vacuum when bag is fully inflated.
* Pressure required for initial deflection of Bag is also enough to expell 600mL from bag (bag much much stronger when not deformed)
    * now building in a manual bag deflection start point, i.e. operate from 10% deformed down to 50% deformed for more linear response
* Piston motion/force required for total pressure need is achieved by 2 NEMA17s running on track in a piston, in a 4"/10cm PVC pipe
* Very small BOM.
    * 4 easy 3dPrint or cnc or injection molded parts + a TBD housing for control/UI, presumably adds 1-2 more parts.
    * Section of 10cm PVC pipe and standard cap
    * any air hose, two pairs connector fittings, one two-way valve (these do not touch patient air path)
    * 2 Nema17 Motors, one drive shaft, and one gear/track. Can use from many standard 3dPrinter stocks or printable.
    * lightweight Tension springs (nice to have, but not required)
    * Piston ring seals (standard size available, or printable)
    * Arduino controller and sensors. 
        * Design includes BVM pressure measurement by default. That's the drive control signal.
        * Volume or velocity feedback requires sensor in vent path.
 

### Considerations:
* Injection mold clamshell for mass production
* Air piston needs better packaging
