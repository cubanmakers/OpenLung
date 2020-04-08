In diesem Mechanikentwurf werden speziell folgende Anforderungen adressiert:

Verfügbarkeit und Beschaffbarkeit der Materialien,
einfache Produzierbarkeit der Einzelteile,
Drehmomentanforderungen an den Motor

Die Konstruktion besteht aus leicht beschaffbaren Halbzeugen:
    Gewindestangen (M8), 
    Plattenmaterial (Dibond, Acrylglas, im Testaufbau Sperrholz),
    Kugellager (608),
    Schrittmotor NEMA17.
    
Zum Antrieb wird ein Gurt verwendet, der am Motor auf- und abgerollt wird.
Bisherige Entwurfe erzeugten entweder zuviel Reibung am Gurt oder lieferten keine ausreichende Betätigungskraft.
Daher wird in diesem Entwurf ein Umlenksystem aus Kugellagern eingesetzt, durch welches sich die Betätigungskraft theoretisch verdoppelt.


2020-03-28
    Erste Teile gedruckt, ausgesägt und montiert, 
    Kugellager 608 für den Hebelarm vorgesehen.
    Noch wenig Erfahrung mit gitlab, daher zusätzlicher Baubericht auf https://www.facebook.com/Thinkandhave .
    
2020-03-29
    Erster laufender Prototyp, 70mm Roller am Betätigungsarm angebracht,
    erster Elektronikaufbau
        arduino mega 2560,
        RAMPS 1.4,
        A4988 stepper driver,
        smartlcd 2004 (mit sdcard reader für automatischen Sequenzablauf ),
    
    Geladen wurde eine angepasste Version von  marlin (https://marlinfw.org/) genutzt wird nur ein Achsenantrieb.
    GCode für Stresstest erstellt.
    
    Die Maschine atmet.


