<img src='images/OL_BANNER.png' height="300"></img>

# Disclaimer

*The plans, documents and other materials (“Material”) contained on this website are intended to facilitate the design of a prototype reproducible medical device to be used if required during the Covid-19 pandemic. The Material is not itself a medical device. The Material has not been tested and has not been approved for use in humans or animals by any regulatory authority of any country.*

*By using the Material, you are agreeing to the following disclaimer.*

*OpenLung / Open Source Ventilator offers the Material as-is and as-available, and makes no representations or warranties of any kind whatever concerning the Material, whether express, implied, statutory, or other. This includes, without limitation, warranties of merchantability, fitness for a particular purpose, non-infringement, absence of latent or other defects, accuracy, or the presence or absence of errors, whether or not known or discoverable.*

*To the extent possible, in no event will OpenLung / Open Source Ventilator be liable to you on any legal theory (including, without limitation, negligence) or otherwise for any direct, special, indirect, incidental, consequential, punitive, exemplary, or other losses, costs, expenses, or damages arising out of the Material or use of the Material, even if OpenLung / Open Source Ventilator has been advised of the possibility of such losses, costs, expenses, or damages.*

*Any ventilator system that has not been approved by a competent medical device regulatory authority may not deliver to the user the ability to properly monitor and control tidal volume, inspiratory pressure, inspiratory: expiratory ratio, heart rate, nor provide the user with the ability to monitor and control positive-end expiratory pressure (PEEP), peak inspiratory pressure (PIP) or to adapt to individual patient requirements.  Inability to monitor and/or control any of these factors can cause death or serious permanent injury.*

*The disclaimer of warranties and limitation of liability provided above shall be interpreted in a manner that, to the extent possible, most closely approximates an absolute disclaimer and waiver of all liability.*

## Managed By
[OpenLung](https://openlung.org/) and [OS Ventilator Ireland](https://opensourceventilator.ie/) Communities

This document in other languages:

| Currently | Available | Languages |   |   |   |
|---|---|---|---|---|---|
|[english](README.md) | [català](translations/README-ca.md) | [čeština](translations/README-cz.md)| [deutsch](translations/README-de.md) | [español](translations/README-es.md) | [français](translations/README-fr.md) |
| [日本語](translations/README-ja.md) | [nederlands](translations/README-nl.md) | [polski](translations/README-pl.md) | [português](translations/README-pt_BR.md) | [Română](translations/README-ro.md) | [Русский](translations/README-ru.md) |
| [svenska](translations/README-sv.md) | [türkçe](translations/README-tr.md) | [汉语](translations/README-zh-Hans.md) | [漢語](translations/README-zh-Hant.md) |[عربى](translations/README-ar.md)|---|

# Low Resource Bag Valve Mask (BVM) Ventilator

- This project was jumpstarted by the COVID-19 global pandemic as a result of the community discussion on a Facebook group called Open Source COVID19 and OpenSourceVentilator, this is why I created a GitLab project for a new open-source product called **OpenLung**.
- More specifically, this project was created in a discussion surrounding low cost **Bag Valve Mask** (**BVM** or **AmbuBag**)-based emergency respirators wherein prior solutions had been developed.

The first device discussed came from an [MIT research group](https://web.mit.edu/2.75/projects/DMD_2010_Al_Husseini.pdf) comprising of the following persons: Abdul Mohsen Al Husseini, Heon Ju Lee, Justin Negrete, Stephen Powelson, Amelia Servi, Alexander Slocum and Jussi Saukkonen.
The second device arose from a [Rice University Mechanical Engineering student group](http://oedk.rice.edu/Sys/PublicProfile/47585242/1063096) comprising of the following persons: Madison Nasteff, Carolina De Santiago, Aravind Sundaramraj, Natalie Dickman, Tim Nonet and Karen Vasquez Ruiz.

*This project seeks to combine and improve the efforts of these two projects into a more simple and reliable device that consists mostly of easy to source or 3D printed parts.*

- Benefits: Can be mass-produced, touch points use certified components, small and simple mechanical requirements, previous research and testing in this area, adaptable to both invasive tubing and masks.

*WARNING/DISCLAIMER: Whenever possible, please seek professional medical care with proper equipment setup by trained individuals. Do not use random information you found on the internet. We are not medical professionals, just people on the internet.*

# How To Help:
1. Fill out our Expression of Interest Form [here](https://opensourceventilator.ie/register) if you haven't already.
*This step is mandatory and it’s how we will find you to match your skills to areas you can help. If you have fabrication equipment, also fill out this form.*
2. We will reach out when your noted skills are needed, until then please check out the following:
-- Stay up to date with the project on our website [Open Source Ventilators Ireland](https://opensourceventilator.ie/) and our social channels.
-- Join our [Slack Channel](https://join.slack.com/t/osventilator/shared_invite/zt-czh5mtpg-z2QZX1xbxAmueOgSgy1tZw) to join the conversation. Many other side projects are happening there.
3. Get familiar with git, to learn how to best contribute to this repository. There are many resources available online, you can start with [YouTube: Introduction to GitLab Workflow](https://www.youtube.com/watch?v=enMumwvLAug) or learn how to submit a merge request [in GitLab's docs](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html).
4. If you are eager and would like to get developing, this is open source, please fork this repo and go for it!
*If you do begin contributing before we contact you, please follow the contribution guidelines as outlined [here](CONTRIBUTING.md).

### Goal
Simplify the existing designs and improve on component reliability for a low-cost Bag Valve Mask (BVM or Ambu-bag) based emergency respirator based on the MIT research group and Rice University Mechanical Engineering student group designs, allowing the device to be constructed mostly of 3d printed or easily-stamped parts.

### Objectives
1.  Design a more integral 3D printed actuation mechanism
2.  Spec a good low amperage, high torque DC motor
3.  Design or find an H-Bridge rectifier circuit
4.  Spec an interface (LCD and Buttons)
5.  Spec feedback sensors for PEEP, low voltage, high- and low-pressure events
6.  Outline interface visually

### Success Criteria
- Device must be easy to mass-produce
- Components must be certified
- The mechanical design must be small and simple
- Previous research and testing in Ambu-Bag must be used
- Must be adaptable to both invasive tubing and masks

### Assumptions, Risks, Obstacles
- Assume improving on MIT research group and Rice University Mechanical Engineering student group AmbuBag based emergency respirator based on known issues with those designs.
- Assume communication to take place via the Slack channel. Communication is an obstacle due to the volume of messages.
- Assume the GitLab page is the primary source of documents and information.

# Project Requirements
- Project Requirements are listed [here](requirements/design-requirements.md).

# Project Progress
Current Mechanical Concept: [Click Here](/concepts/ventilator-concept-8)
![Current Mechanical Concept](images/current_concept.png)
*Current Design: Concept 8 Under Review*

## See live Whimsical flow chart [here](https://whimsical.com/4mai9JtqTHAGu6i6qz8Hyy)

# Recommended Tools
- [A360](https://www.autodesk.com/products/a360/features) - A360 project collaboration software helps teams view, share, find, and review files in a centralized workspace.
- [Fusion 360](https://www.autodesk.com/products/fusion-360/mechanical-engineer)
- [FreeCADWeb](https://www.freecadweb.org/) - 3D parametric modeler for free
- [Artrage](http://www.artrage.com/) - Quick Sketcher on desktop
- [Algodoo](http://www.algodoo.com/) - Great for testing physical/motion ideas on a game like approach but goes quite deep.

# Image Licensing
<img src='https://i.creativecommons.org/l/by-sa/4.0/88x31.png' height="300"></img>
Except where otherwise noted, content on this site is licenced under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
