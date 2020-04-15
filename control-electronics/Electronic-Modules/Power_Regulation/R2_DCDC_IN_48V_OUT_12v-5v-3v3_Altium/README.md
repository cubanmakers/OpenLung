# Revision 2 - Power Module - OSV Velocity team - DCDC

## Designer

Federico De Benedetti (OSV Velocity Team - INFN Milan Division)

## Main specifications

- Input voltage 48V 4.5A

- Output voltage:
    - 12v   1000mA
    - 5v    500mA
    - 3v3   500mA
    
- Nominal overcurrent Fuse protection:
    - 6.3 A (FAST)
    
## Changelog over Rev.1 LDO
- Changed the step down structure 
- - OLD: IN 48V: LDO to 12V, LDO to 5V (from 48V), LDO to 3v3 (from 48V)
- - NEW: IN 48V: DCDC to 12V > DCDC to 5V(from 12V), DCDC to 3v3 (from 12V)
    
## Note:

The usage of this circuit at high input voltages and high 5 or 3v3 currents is discouraged. 
Disregarding the previous point may lead to permanent failure of the DCDC converters.