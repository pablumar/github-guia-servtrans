Profile: BodyStructureMyHealthEu
Parent: $BodyStructure-eu-lab
Id: BodyStructure-lab-myhealtheu
Title: "Body structure: Laboratory"
Description: """This profile defines how to represent Body Structure in HL7 FHIR for the purpose of this guide."""

* extension[laterality].valueCodeableConcept from EHDSIBodySiteLaterality
* morphology from EHDSIMorphologicAbnormalityWithExceptions
* location from EHDSIBodySiteWithExceptions
* locationQualifier from EHDSIBodyStructureLocationWithExceptions


// MS

* location insert ObligationMS
* extension[laterality] insert ObligationMS
* locationQualifier insert ObligationMS
* morphology insert ObligationMS


