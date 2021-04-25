---
author: Leonard Rosenthol
title: XMP Backgrounder
date: 2021-04-25
copyright: Copyright(c) 2021, Adobe
---

# XMP: Extensible Metadata Platform
## XMP: Extensible Metadata Platform

XMP is a labeling technology that allows you to embed data about a file, as metadata, into the file itself. 

With XMP, applications and back-end publishing systems gain a common method for capturing, sharing, and leveraging this valuable metadata — opening the door for more efficient job processing, workflow automation, and rights management, among many other possibilities."

## Based on Open Standards
- W3C RDF (https://www.w3.org/RDF/)
	- Standard model for data interchange on the Web
	- Basis for all web-based metadata (RDFa, microdata, JSON-LD, schema.org, etc.)
- ISO Specifications
	- Primary: 16684-1
	- Schemas Definitions: 16684-2 
	- JSON Serialization: 16684-3


# Elements of XMP
## Elements of XMP

- XMP Framework
	- RDF Framework or expressing metadata from multiple schemas
- XMP schemas
	- Schemas used to describe properties, contained in namespaces
- XMP Packet Technology
	- Method for embedding XML fragments in binary streams

## XMP Schemas

- RDF specifies labels into sequences of XML structured as resource, property, value (alternatively  subject, predicate, object).  RDF Schemas define vocabularies.

- Standard XMP schemas (maintained by Adobe)
	- https://github.com/adobe/xmp-docs/tree/master/XMPNamespaces

- Any schema, provided it is defined according to the specification. 
	- eg. domain-specific schemas (examples: IPTC, NewsML, AdsML) can be described

## Example: Dublin Core namespace

The Dublin Core namespace provides a set of commonly used properties. The names and usage shall be as defined in the Dublin Core Metadata Element Set, created by the Dublin Core Metadata Initiative (DCMI).

- The preferred namespace prefix is dc

|Name|Description|Type|
|----|-----------|----|
|dc:contributor|An entity responsible for making contributions to the resource. Examples of a contributor include a person, an organization, or a service. Typically, the name of a contributor should be used to indicate the entity. |Unordered array of [ProperName](./XMPDataTypes/CoreProperties.md#propername)|
|dc:creator|An entity primarily responsible for making the resource. Examples of a creator include a person, an organization, or a service. Typically, the name of a creator should be used to indicate the entity. |Ordered array of [ProperName](./XMPDataTypes/CoreProperties.md#propername)|
|dc:date|A point or period of time associated with an event in the life cycle of the resource.  |Ordered array of [Date](./XMPDataTypes/CoreProperties.md#date)|
|dc:format|The file format, physical medium, or dimensions of the resource. Recommended best practice is to use a controlled vocabulary such as the list of Internet Media Types [MIME].   |[MIMEType](./XMPDataTypes/CoreProperties.md#mimetype)|
|dc:identifier|An unambiguous reference to the resource within a given context. Recommended best practice is to identify the resource by means of a string conforming to a formal identification system.  |[Text](./XMPDataTypes/CoreProperties.md#text)|
|dc:language|A language of the resource.  |Unordered array of [Locale](./XMPDataTypes/CoreProperties.md#locale)|

# Supported in numerous file formats
## Image formats
- DNG
- GIF
- JPEG (incl. JPEG XT, JPEG XL, etc.)
- JPEG 2000
- PNG 
- TIFF
- SVG
- AVIF
- HEIF
- WebP

## Dynamic media formats
- ASF (WMA, WMV)
- FLV (Flash® Video)
- IFF/RIFF (AVI, WAV, AIFF)
- MOV (QuickTime)
- MP3
- MPEG-2
- MPEG-4 (generic and F4V)
- SWF (Flash)

## Video package formats
- AVCHD
- P2
- Sony HDV (High Definition Video)
- XDCAM

## Markup formats
- HTML
- XML

## Document formats
- PDF
- PS, EPS (PostScript® and Encapsulated PostScript)
- UCF/OCF (Universal/Open Container Format)
	- EPUB
- ODF (Open Document Format aka Open/Libre Office)
- OOXML?? (Office Open XML aka MSOffice)

## Adobe application formats
- AI (Adobe Illustrator®)
- INDD (Adobe InDesign®)
- PSD (Adobe Photoshop)

# Questions?
