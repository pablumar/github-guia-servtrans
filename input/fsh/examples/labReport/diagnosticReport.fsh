Instance: SampleDiagnosticReport
InstanceOf: DiagnosticReportLabMyHealthEu
Title: "DiagnosticReport: example"
Description: "DiagnosticReport: example of Laboratory Report"


* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* code = $loinc#11502-2 "Laboratory report"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(SampleComposition)
* status = #final
* category[studyType] = $loinc#18717-9	"Blood bank studies (set)"
* subject = Reference(SamplePatient)
* effectiveDateTime = "2023-04-19T15:46:00+01:00"
* result[+] = Reference(SampleBloodGroupObservation)
