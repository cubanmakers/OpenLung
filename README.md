![Logo](images/OL_BANNER.png)

## Managed By
OS Ventilator Ireland Community

This document in other languages:

| Currently | Available | Languages |   |   |   |
|---|---|---|---|---|---|
|[english](README.md) | [català](translations/README-ca.md) | [
čeština](translations/README-cz.md)| [deutsch](translations/README-de.md) | [español](translations/README-es.md) | [français](translations/README-fr.md) |
| [日本語](translations/README-ja.md) | [nederlands](translations/README-nl.md) | [polski](translations/README-pl.md) | [português](translations/README-pt_BR.md) | [Română](translations/README-ro.md) | [Русский](translations/README-ru.md) |
| [svenska](translations/README-sv.md) | [türkçe](translations/README-tr.md) | [汉语](translations/README-zh-Hans.md) | [漢語](translations/README-zh-Hant.md) |---|---|

# Low Resource Bag Valve Mask (BVM) Ventilator

- This project was jumpstarted by the COVID-19 global pandemic as a result of community discussion on a facebook group called Open Source COVID19 and OpenSourceVentilator, this is why I created a GitLab project for a new open source product called **OpenLung**.
- More specifically, this project was created in a discussion surrounding low cost **Bag Valve Mask** (**BVM** or **AmbuBag**)-based emergency respirators wherein prior solutions had been developed.

The first device discussed came from an [MIT research group](https://web.mit.edu/2.75/projects/DMD_2010_Al_Husseini.pdf) comprising of the following persons: Abdul Mohsen Al Husseini, Heon Ju Lee, Justin Negrete, Stephen Powelson, Amelia Servi, Alexander Slocum and Jussi Saukkonen.
The second device arose from a [Rice University Mechanical Engineering student group](http://oedk.rice.edu/Sys/PublicProfile/47585242/1063096) comprising of the following persons: Madison Nasteff, Carolina De Santiago, Aravind Sundaramraj, Natalie Dickman, Tim Nonet and Karen Vasquez Ruiz.

*This project seeks to combine and improve the efforts of these two projects into a more simple and reliable device that consists mostly of easy to source or 3D printed parts.*

- Benefits: Can be mass produced, touch points use certified components, small and simple mechanical requirements, previous research and testing in this area, adaptable to both invasive tubing and masks.

*WARNING/DISCLAIMER: Whenever possible, please seek professional medical care with proper equipment setup by trained individuals. Do not use random information you found on the internet. We are not medical professionals, just people on the internet.*

# How To Help:
1. Fill out our Expression of Interest Form [here](https://opensourceventilator.ie/register) if you haven't already.
*This step is mandatory and it’s how we will find you to match your skills to areas you can help. If you have fabrication equipment, also fill out this form.*
2. We will reach out when your noted skills are needed, until then please check out the following:
-- Stay up to date with the project on our website [Open Source Ventilators Ireland](https://opensourceventilator.ie/) and our social channels.
-- Join our [Slack Channel](https://join.slack.com/t/osventilator/shared_invite/zt-cst4dhk7-BFNMz_vyBPthjlBFYV1yWA) to join the conversation. Many other side projects are happening there.
3. Get familiar with git by learning how to best contribute to this repository. There are many resources available online, you can start [here](https://www.youtube.com/watch?v=enMumwvLAug) or learn how to submit a merge request [here](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html).
4. If you are anxious and would like to get developing, this is open source, please fork this repo and go for it!
*If you do begin contributing before we contact you, please follow the contribution guidelines as outlined [here](CONTRIBUTING.md).

### Goal
Simplify the existing designs and improve on component reliability for a low-cost Bag Valve Mask (BVM or Ambu-bag) based emergency respirator based on the MIT research group and Rice University Mechanical Engineering student group designs, allowing the device to be constructed mostly of 3d printed or easily-stamped parts.

### Objectives
1.	Design a more integral 3D printed actuation mechanism
2.	Spec a good low amperage, high torque DC motor
3.	Design or find and H Bridge rectifier circuit
4.	Spec an interface (LCD and Buttons)
5.	Spec feedback sensors for PEEP, low voltage, high- and low-pressure events
6.	Outline interface visually

### Success Criteria
- Device must be easy to mass produced
- Components must be certified
- Mechanical design must be small and simple
- Previous research and testing in Ambu-Bag must be used
- Must be adaptable to both invasive tubing and masks

### Assumptions, Risks, Obstacles
- Assume improving on MIT research group and Rice University Mechanical Engineering student group AmbuBag based emergency respirator based on known issues with those designs.
- Assume communication to take place via slack channel. Communication is an obstacle due to volume of messages.
- Assume gitlab page is primary source of documents and information.

# Project Requirements
- Project Requirements are listed [here](requirements/design-requirements.md).

# Project Progress
![Current Mechanical Concept](concepts/Concept6/models/FDM/6A1/CONCEPT_6_MECH.png)
*Current Design Concept 6 with known issues*

## See live Whimsical flow chart [here](https://whimsical.com/4mai9JtqTHAGu6i6qz8Hyy)

# Recommended Tools
- [A360](https://www.autodesk.com/products/a360/features) - A360 project collaboration software helps teams view, share, find, and review files in a centralized workspace.
- [Fusion 360](https://www.autodesk.com/products/fusion-360/mechanical-engineer)
- [FreeCADWeb](https://www.freecadweb.org/) - 3D parametric modeler for free
- [Artrage](http://www.artrage.com/) - Quick Sketcher on desktop
- [Algodoo](http://www.algodoo.com/) - Great for testing physical/motion ideas on a game like approach but goes quite deep.
