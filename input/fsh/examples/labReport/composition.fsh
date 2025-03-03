Instance: SampleComposition
InstanceOf: CompositionLabReportMyHealthEu
Title: "Composition: example"
Description: "Composition: example of Laboratory Report"
* contained = Organization-SampleComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* category[studyType] = $loinc#18717-9	"Blood bank studies (set)"
* subject = Reference(SamplePatient)
* date = "2023-03-09T14:30:00+01:00"
* author[+].display = "Dr. Patrick Dempsey"
* title = "Laboratory Report - 10 March, 2023 14:30"
* attester[+].mode = #legal
* attester[=].time = "2020-12-27T14:30:00+01:00"
* attester[=].party = Reference(Organization-SampleComposition)
* custodian = Reference(Organization-SampleComposition)
* section[+].title = "Blood group lab result report"
* section[=].code = $loinc#26436-6 "Laboratory studies (set)"
* section[=].code.text = "Laboratory studies"
* section[=].entry[+] = Reference(SampleBloodGroupObservation)


Instance: Organization-SampleComposition
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.1.2"
* identifier.value = "120148"
* identifier.assigner.display = "Good Organization"
* name = "Good Organization"
* telecom.system = #phone
* telecom.value = "390 666 0581"
* telecom.use = #work
* address.line = "Via Emilio Praga 39"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00137"
* address.country = "100"