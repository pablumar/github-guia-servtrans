// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: subject2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "LabRptSubject2Fhir"					
* title = "MyHealth@EUSubject to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUSubject Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Subject data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Subject"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Patient-lab-myhealtheu"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Subject"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Patient-lab-myhealtheu"					
					
* group[=].element[+].code = #Subject.identification					
* group[=].element[=].display = "Identification of the patient/subject"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.identification.familyName					
* group[=].element[=].display = "Family name/surname"					
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.givenName					
* group[=].element[=].display = "Given name"					
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.dateOfBirth					
* group[=].element[=].display = "Date of birth"					
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.identifier					
* group[=].element[=].display = "Personal identifier"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.gender					
* group[=].element[=].display = "Gender"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.sex					
* group[=].element[=].display = "Sex for clinical use"					
* group[=].element[=].target.code = #Patient.extension:sex-for-clinical-use					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom					
* group[=].element[=].display = "Patient/subject related contact information"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.addressTelecom.address					
* group[=].element[=].display = "Address"					
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.street					
* group[=].element[=].display = "Street"					
* group[=].element[=].target.code = #Patient.address.line					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.street					
* group[=].element[=].display = "Street"					
* group[=].element[=].target.code = #Patient.address.line.extension:streetName					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.houseNumber					
* group[=].element[=].display = "House Number"					
* group[=].element[=].target.code = #Patient.address.line.extension:houseNumber					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.postBox					
* group[=].element[=].display = "Post Box"					
* group[=].element[=].target.code = #Patient.address.line.extension:postBox					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.postalCode					
* group[=].element[=].display = "Postal Code"					
* group[=].element[=].target.code = #Patient.address.postalCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.stateOrProvince					
* group[=].element[=].display = "State or Province"					
* group[=].element[=].target.code = #Patient.address.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.city					
* group[=].element[=].display = "City"					
* group[=].element[=].target.code = #Patient.address.city					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.countryCode					
* group[=].element[=].display = "Country Code"					
* group[=].element[=].target.code = #Patient.address.country.extension:countryCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.use					
* group[=].element[=].display = "Use of Address"					
* group[=].element[=].target.code = #Patient.address.use					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.address.type					
* group[=].element[=].display = "Type of address"					
* group[=].element[=].target.code = #Patient.address.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.telecom					
* group[=].element[=].display = "Telecom"					
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
