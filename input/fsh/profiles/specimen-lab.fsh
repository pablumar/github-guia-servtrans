Profile: SpecimenMyHealthEu
Parent: $specimen-eu-lab
Id: Specimen-lab-myhealtheu
Title: "Specimen: Laboratory"
Description: """This profile defines how to represent Specimens in HL7 FHIR for the purpose of this guide."""

* type from eHDSILabSpecimenTypeWithExceptions
* subject only Reference (PatientMyHealthEu or DeviceSpecimenMyHealthEu or Substance or Location)
* parent  only Reference(SpecimenMyHealthEu)
* request only Reference (ServiceRequestLabMyHealthEu )
* collection
  * extension[bodySite].valueReference only Reference( BodyStructureMyHealthEu)
  * bodySite from EHDSIBodySiteWithExceptions
// * processing.additive only Reference(Substance or SubstanceAdditiveMyHealthEu)
/* * container
  * type ^short = "ADD VOC BINDING" */

// MS 

* identifier insert ObligationMS
* subject insert ObligationMS
* type insert ObligationMS
* collection.collected[x] insert ObligationMS
* collection.bodySite insert ObligationMS
* collection.extension[bodySite] insert ObligationMS
* collection.method insert ObligationMS
* receivedTime insert ObligationMS
