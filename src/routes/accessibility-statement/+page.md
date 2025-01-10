---
title: "Accessibility statement for the King's Past project"
excerpt: "Learn more about the accessibility statement for the King's Past project"
tags: accessibility, statement
---

<script>
  import { base } from '$app/paths';
</script>

# { title }

## Measures to support accessibility

King's Digital Lab takes the following measures to ensure accessibility:

- Include commitment to accessibility as part of our values;
- The King's Digital Lab team regularly tests its online services and systems
  to ensure they meet accessibility requirements when covered by a Service Level
  Agreement. We aim to comply with
  [Web Content Accessibility Guidelines (WCAG)](https://www.w3.org/WAI/standards-guidelines/wcag/)
  2.1 AA at minimum when feasible.

## Conformance status

The Web Content Accessibility Guidelines (WCAG) defines requirements to improve accessibility for people with disabilities.
It defines three levels of conformance: Level A, Level AA, and Level AAA.
The project is partially conformant with WCAG 2.1 level AA. Partially conformant
means that some parts of the content do not fully conform to the accessibility
standard.

## Feedback

We welcome your feedback on the accessibility of King's Past. Please let us know
if you encounter accessibility barriers:

- [Issue reporting form](https://kdl.kcl.ac.uk/report-issue/)
- E-mail: [kdl-info@kcl.ac.uk](mailto:kdl-info@kcl.ac.uk)

## Technical specifications

Accessibility of the website relies on the following technologies to work with
the particular combination of web browser and any assistive technologies or
plugins installed on your computer:

- HTML
- WAI-ARIA
- CSS
- JavaScript

These technologies are relied upon for conformance with the accessibility
standards used.

## Limitations and alternatives

Despite our best efforts to ensure accessibility, there may
be areas where accessibility is limited. Below is a description of known issues, and potential
solutions. Please contact us if you observe an issue not listed below.

### Known limitations for King's Past

1. **3D Model viewer (Sketchfab)** : The site includes embedded 3D models from
   Sketchfab. These embeds contain duplicate ARIA labels on their main elements
   due to third-party embedding service constraints. This issue can be
   observed on our [Demonumenta project page]({base}/about/demonumenta) which
   contains multiple 3D model viewers. While this may trigger accessibility
   warnings, it does not impact the actual functionality or accessibility of the
   content. Each 3D model viewer is properly labeled with unique titles and
   contained within clearly marked regions.

   We are monitoring this issue and will update our implementation if Sketchfab
   provides a solution in the future. If you encounter any difficulties accessing
   the 3D content, please contact us and we will provide alternative means to view
   the information.

## Assessment approach

King's Digital Lab assessed the accessibility of this website using the following
approaches:

- Self-evaluation using [Axe accessibility tools](https://www.deque.com/axe/)
- Manual testing of the site by the King's Digital Lab team

## Date

This statement was updated 10 January 2025. 

This statement was created on 04 November 2024 using the
[W3C Accessibility Statement Generator Tool](https://www.w3.org/WAI/planning/statements/).
