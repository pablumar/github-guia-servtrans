Profile: DiagnosticReportLabMyHealthEu
Parent: $DiagnosticReport-eu-lab
Id: DiagnosticReport-lab-myhealtheu
Title: "DiagnosticReport: Laboratory"
Description: """This profile defines how to constrain the DiagnosticReport resource to represent a Laboratory Report for the purpose of this guide."""

* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"

/* * extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5].valueReference only Reference(CompositionLabReportMyHealthEu) */

* insert ReportCategoryRule

* language from EHDSILanguage
* basedOn only Reference (ServiceRequestLabMyHealthEu)
* code from EHDSILaboratoryReportTypes
* subject only Reference (PatientMyHealthEu)
* specimen only Reference (SpecimenMyHealthEu)
* result only Reference (ObservationResultsLaboratoryMyHealthEu)
* performer only Reference ( PractitionerMyHealthEu or PractitionerRoleMyHealthEu or Organization)
* resultsInterpreter only Reference ( PractitionerMyHealthEu or PractitionerRoleMyHealthEu or Organization)
* presentedForm ^short = "Entire report as issued (pdf)"

// -- Must Support

* code insert ObligationMS
* effectiveDateTime insert ObligationMS
* language insert ObligationMS
* status insert ObligationMS
* identifier insert ObligationMS
* basedOn insert ObligationMS
* subject insert ObligationMS
* category[studyType] insert ObligationMS
* specimen insert ObligationMS
* presentedForm insert ObligationMS
* media insert ObligationMS

// * text insert ObligationMS
* conclusion insert ObligationMS
* result insert ObligationMS
