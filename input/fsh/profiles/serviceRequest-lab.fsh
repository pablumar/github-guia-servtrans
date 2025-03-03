Profile: ServiceRequestLabMyHealthEu
Parent: http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab
Id: ServiceRequest-lab-myhealtheu
Title: "ServiceRequest: Laboratory"
Description: """This profile defines how to represent a Laboratory Order in HL7 FHIR for the purpose of this guide."""

* status ^short = "The status of a service order"
* intent ^short = "The kind of service reques"
* code from EHDSILabCodeWithExceptions // check strength voc binding
* subject only Reference (PatientMyHealthEu)
* specimen	only Reference (SpecimenMyHealthEu)
* insurance only Reference (CoverageLabMyHealthEu)
* reasonCode from EHDSIOrderReason

// -- Must Support

* insurance insert ObligationMS
* identifier insert ObligationMS
* requisition insert ObligationMS
* authoredOn insert ObligationMS
* requester insert ObligationMS
* reasonCode insert ObligationMS
* reasonReference insert ObligationMS

