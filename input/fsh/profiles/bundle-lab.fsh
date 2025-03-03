Profile: BundleLabReportMyHealthEu
Parent: $Bundle-eu-lab
Id: Bundle-lab-myhealtheu
Title: "Bundle: Laboratory"
Description: """This profile defines how to use a Bundle to represent a Laboratory Result Report in HL7 FHIR for the purpose of this guide."""


* entry[composition].resource only CompositionLabReportMyHealthEu
* entry[diagnosticReport].resource only DiagnosticReportLabMyHealthEu
* entry[patient] 1..
* entry[patient].resource only PatientMyHealthEu
* entry[serviceRequest].resource only ServiceRequestLabMyHealthEu
* entry[observation].resource only   ObservationResultsLaboratoryMyHealthEu
* entry[specimen].resource only SpecimenMyHealthEu
* entry[serviceRequest].resource only ServiceRequestLabMyHealthEu
* entry[practitioner].resource only PractitionerMyHealthEu
* entry[practitionerRole].resource only PractitionerRoleMyHealthEu
* entry[bodyStructure].resource only BodyStructureMyHealthEu
* entry[device].resource only DeviceMeasuringMyHealthEu or DeviceSpecimenMyHealthEu