// -------------------------------------------------------------------------------					
//  Concept Model. File: 					payer-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: payer2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "Payer2Fhir"					
* title = "MyHealth@EUPayer to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUPayer Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Payer data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Payer"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Bundle-lab-myhealtheu"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Payer"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/ServiceRequest-lab-myhealtheu"					
					
* group[=].element[+].code = #Payer.insurance					
* group[=].element[=].display = "Health insurance information"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "insurance.ofType(Coverage)"					
* group[=].element[+].code = #Payer.insurance.identifier					
* group[=].element[=].display = "Health insurance code"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details in Group 2"					
* group[=].element[+].code = #Payer.insurance.name					
* group[=].element[=].display = "Health insurance name"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details in Group 2"					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "Health insurance number"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details in Group 2"					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Payer"					
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Coverage"					
					
* group[=].element[+].code = #Payer.insurance					
* group[=].element[=].display = "Health insurance information"					
* group[=].element[=].target.code = #Coverage					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Payer.insurance.identifier					
* group[=].element[=].display = "Health insurance code"					
* group[=].element[=].target.code = #Coverage.payor.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "payor.ofType(Organization)"					
* group[=].element[+].code = #Payer.insurance.name					
* group[=].element[=].display = "Health insurance name"					
* group[=].element[=].target.code = #Coverage.payor.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "payor.ofType(Organization)"					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "Health insurance number"					
* group[=].element[=].target.code = #Coverage.policyHolder.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it refers to the owner of the policy"					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "Health insurance number"					
* group[=].element[=].target.code = #Coverage.beneficiary.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it refers to the plan beneficiary"					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "Health insurance number"					
* group[=].element[=].target.code = #Coverage.subscriberId					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the ID assigned to the subscriber"					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "Health insurance number"					
* group[=].element[=].target.code = #Coverage.subscriber.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it refers to the subscriber to the policy and the Subscriber is of type Patient"					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Payer"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Patient-lab-myhealtheu"					
					
* group[=].element[+].code = #Payer.insurance					
* group[=].element[=].display = "Health insurance information"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.identifier					
* group[=].element[=].display = "Health insurance code"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.name					
* group[=].element[=].display = "Health insurance name"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "Health insurance number"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Sometimes the identifier assigned by the payor (e.g. the SSN) is used as one of the Patient Identifiers"					
//---END					
//---END					
//---END					
//---END					
