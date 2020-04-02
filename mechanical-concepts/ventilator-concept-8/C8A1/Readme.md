# Concept 8A1

## Notes:

Anyway, here's some of the design intent for Concept 8: The outer structure is all made from the same thickness of sheet, which from my experience working with sheet metal, allows you to laser, plasma or waterjet cut a large amount of parts from the same sheet of material. The structural 'pins' connected to both sides of the frame are very simple to machine on even the most basic of a hobby lathe. These can also be made from various materials including aluminium, plastic, wood, (or even bamboo!). The large 'ring' that presses against the bag is probably going to be a part that a novice machinist would struggle with, but with the addition of ball bearings in the assembly it allows us to make it out of a variety of materials(as opposed to just uhmw and delrin, like in the 8.1 version). So plastic, metal or even wood could be used depending on local availability. Lastly I'd like to address the cam mechanism, because it's 'complexity' has been a worry for a lot of people. The Cam itself in the 8.2 revision is intended to be 3D printed, so the complex shapes (which would obviously be a nightmare to machine using a milling machine or lathe) wouldn't be the same issue manufactured in this way. That's one of the big advantages I see with 3D printing. Complex shapes don't bother the process the same way it would traditional machining. The ball bearings and gears in the Cam assembly are 'off the shelf' parts, but the gears are also possibly 3D printable parts depending on the precision of the printer. I hope I've clarified the direction I was going with this design, as at first glance it may look very random and not well thought out. Also I'd like to point out that this design would be meant for countries that have the capabilities to manufacture in this way. Simpler Concepts, like the ones that myself and @Trevor Smale designed in earlier versions, would obviously be more suited to poorer countries that have less manufacturing capabilities.

### Mechanical:
- Needed to add feature (Tilting) for varying depressions on the fly without touching the electronic interface
- Simplified the depression mechanism to an eccentric cam as testing has shown difficulties with tensions and motor torque on 6
- Seven was overly complicated according to the Hive-mind and close advisors.
- Moreover, belt wear is a big concern. I had under estimated the wear factor on belts which causes fraying and consequently more open surfaces for particles to attach.
- Continuing in regards to the belt, the nylon weave is furthermore not suitable for viral control as it has extensive surface networks and cannot be sterilized easily.
- Moreover, the belt has un-predictable bunching characteristics that would take extensive testing and iteration to control in an engineered manner.
- The overall footprint was too small and required modules to expand into a operational size
- The rollers require inset faces for bearings to properly engage, this was an unexpected twist, essentially making rollers time and process intensive vs flat planes
- Parallelism was also a major reason for altering the mechanism as Kush Babar stated, Pitting happens quickly as a result of eccentric parallelism cause by repetitive vibration and expansion contraction.

### EE

- The electrical engineering is still loosely defined, However most development has been aimed at open source SBC's like RPI and ARD with the thinking that we would have abundant quantities available.
- According to our updated numbers, it looks as though those available supplies are not only being used, but also being considered for a number of new projects as it is familiar to hobbyists.
- Andrew and I have been reaching out to many people personally in regards to the development of the electronics design, production and availability without getting any solid information.
- There is a man involved from Texas named Sam Pedroggy who was offering up a large supply of custom displays, when considered in contrast to the development community we were unsure about the efficacy of branching such dev commitments.
- We are currently in talks with larger MFG (Digikey) to assess the possibility of a custom open sourced driver board, so that we don't have to mishmash components.

### Function

- It was important to address the motion path of the mechanism as it also effects the usability and safety of the machine.
- We need to reduce friction to near zero for long cycle times.
- Any wear needs to be addressable by way of field servicing

### Manufacturability

- Due to constantly increasing volume requirements we have had to assess and re-assess the potential process. This device takes into consideration, the possibility of producing
- 1000 per day, or 100 per assembler.
- We will need to utilize the stamping infrastructure of automotive plants to actually supply the demand.
- Laser cutting is a stop gap measure to get testing and have alternate design available early.

### Aesthetic

- Needs to look inviting or not intimidating to newly initiated users
- Needs to imply operational characteristics
- Needs to take a bump or fall
- Needs to be powder-coated for decontamination

## David O'Reilly / Trevor Smale