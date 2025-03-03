// -------------------------------------------------------------------------------					
//  Concept Model. File: 					validator-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: validator2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "Validator2Fhir"					
* title = "MyHealth@EUValidator to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUValidator Model to this guide Map"					
* purpose = "It shows how the Validator Recipient data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Validator"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Validator"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
* group[=].element[+].code = #Validator.identifier					
* group[=].element[=].display = "Result validator identifier"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional')"					
* group[=].element[+].code = #Validator.name					
* group[=].element[=].display = "Result validator name"					
* group[=].element[=].target.code = #Composition.attester.party.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(Practitioner).name"					
* group[=].element[+].code = #Validator.name					
* group[=].element[=].display = "Result validator name"					
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).Practitioner.resolve().name"					
* group[=].element[+].code = #Validator.organization					
* group[=].element[=].display = "Result validator organization"					
* group[=].element[=].target.code = #Composition.attester.party.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Validator.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Validator.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #Composition.attester.party.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Validator.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #Composition.attester.party.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Validator.dateTime					
* group[=].element[=].display = "Validation date and time"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').time"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
