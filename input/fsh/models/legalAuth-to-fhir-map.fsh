// -------------------------------------------------------------------------------					
//  Concept Model. File: 					legalAuth-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: legalAuth2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "LegalAuth2Fhir"					
* title = "MyHealth@EURecipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EULegal Authenticator Model to this guide Map"					
* purpose = "It shows how theLegal Authenticator Recipient data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/LegalAuthenticator"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/LegalAuthenticator"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
* group[=].element[+].code = #LegalAuthenticator.identifier					
* group[=].element[=].display = "Legal authenticator identifier"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal')"					
* group[=].element[+].code = #LegalAuthenticator.name					
* group[=].element[=].display = "Legal authenticator name"					
* group[=].element[=].target.code = #Composition.attester.party.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(Practitioner).name"					
* group[=].element[+].code = #LegalAuthenticator.name					
* group[=].element[=].display = "Legal authenticator name"					
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).practitioner.resolve().name"					
* group[=].element[+].code = #LegalAuthenticator.organization					
* group[=].element[=].display = "Legal authenticator organization"					
* group[=].element[=].target.code = #Composition.attester.party.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #LegalAuthenticator.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #LegalAuthenticator.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #Composition.attester.party.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #LegalAuthenticator.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #Composition.attester.party.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #LegalAuthenticator.dateTime					
* group[=].element[=].display = "Authentication date and time"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').time"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
