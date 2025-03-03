Profile: CompositionLabReportMyHealthEu
Parent: $Composition-eu-lab
Id: Composition-lab-myhealtheu
Title: "Composition: Laboratory"
Description: """This profile defines how to constrain the Clinical document profile (Composition) to represent a Laboratory Report for the purpose of this guide."""
/* * ^publisher = "MyHealth@EU Project"
* ^copyright = "MyHealth@EU Project" */

* . ^short = "Laboratory Report composition"
* . ^definition = """Laboratory Report composition. 
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."""

* extension[basedOn-order-or-requisition].valueReference only Reference (ServiceRequestLabMyHealthEu)
* language from EHDSILanguage
* type from EHDSILaboratoryReportTypes
* subject only Reference (PatientMyHealthEu)
* insert ReportCategoryRule
* author only Reference (PractitionerMyHealthEu or PractitionerRoleMyHealthEu or Device or Organization)
* attester.party only Reference ( PractitionerMyHealthEu or PractitionerRoleMyHealthEu or Organization)

// -------------------------------------
// Single section  0 .. 1
// -------------------------------------
/* * section contains lab-no-subsections ..* // check if ..1 or ..* */
* section[lab-no-subsections]
/*   * ^short = "Variant 1: EU Laboratory Report section with entries and no sub-sections"
  * ^definition = """Variant 1: With this option, all laboratory report data entries are provided in the top level sections and no sub-sections are allowed.""" */
  * code from EHDSILabStudyTypeWithExceptions // check vocab
  * entry only Reference (ObservationResultsLaboratoryMyHealthEu)
// -------------------------------------
// Structured sections  0 .. 1
// -------------------------------------
/* * section contains lab-subsections ..* // check if ..1 or ..* */
* section[lab-subsections]
  * code from EHDSILabStudyTypeWithExceptions
  * section 1..      
    * code from EHDSILabStudyTypeWithExceptions // check vocab
    * entry only Reference (ObservationResultsLaboratoryMyHealthEu)


// -- Must Support

* extension[information-recipient] insert ObligationMS
* extension[basedOn-order-or-requisition] insert ObligationMS
* extension[versionNumber] insert ObligationMS
* type insert ObligationMS
* date insert ObligationMS
* title insert ObligationMS
* language insert ObligationMS
* status insert ObligationMS
* identifier insert ObligationMS
* author insert ObligationMS
* attester.party insert ObligationMS
* attester.time insert ObligationMS
* subject insert ObligationMS
* category[studyType] insert ObligationMS
* section[lab-no-subsections].code insert ObligationMS
* section[lab-no-subsections].entry insert ObligationMS
* section[lab-no-subsections].title insert ObligationMS
* section[lab-no-subsections].text insert ObligationMS
* section[lab-no-subsections].entry insert ObligationMS
* section[lab-subsections].code insert ObligationMS
* section[lab-subsections].title insert ObligationMS
* section[lab-subsections].section.code insert ObligationMS
* section[lab-subsections].section.title  insert ObligationMS
* section[lab-subsections].section.text insert ObligationMS
* section[lab-subsections].section.entry insert ObligationMS


