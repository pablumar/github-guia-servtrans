RuleSet: ReportAuthorRule
* ^comment = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."

RuleSet: ReportStatusRule
* status /* obeys labRpt-status */
  * ^short = "Status of the Report" // add voc binding aligned with DiagReprt
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned, based on the http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus mapping"

RuleSet: ReportEncounterRule
/* * encounter obeys labRpt-enc */
* encounter only Reference (Encounter)
  * ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
  * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests).

  DiagnosticReport and Composition SHALL have the same encounter.
  """

RuleSet: ReportSubjectRule
* subject 1..
* subject /* obeys labRpt-subject */
// * subject only Reference (PatientEuLab or Patient or Group or Location or Device)
* subject only Reference (PatientEuLab or PatientAnimalEu or Group or Location or Device)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
  * ^comment = "DiagnosticReport and Composition SHALL have the same subject"


RuleSet: ReportIdentifierRule
* identifier /* obeys labRpt-id */
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"


RuleSet: ReportTypeRule (element)
* {element} 1..
/* * {element}  obeys labRpt-code */
// * {element}  only $CodeableConcept-uv-ips
* {element}  from LabReportTypesEuVs (preferred) // value set to be revised add alternative value sets
// based on 2023-09-01 decision
/*   * ^binding.extension.extension[0].url = "purpose"
  * ^binding.extension.extension[=].valueCode = #candidate
  * ^binding.extension.extension[+].url = "valueSet"
  * ^binding.extension.extension[=].valueCanonical = Canonical ( LabSpecialtyEuVs )
  * ^binding.extension.extension[+].url = "documentation"
  * ^binding.extension.extension[=].valueMarkdown = """Laboratory Specialties."""
  * ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Laboratory Specialties." */
  * ^short = "Type of (Laboratory) Report"
  * ^definition = "Specifies that it refers to a Laboratory Report"
  * ^comment = "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"


RuleSet: ReportCategoryRule
// * category[specialty] from EHDSILabSpecialty // not in this version
* category[studyType] from EHDSILabStudyType