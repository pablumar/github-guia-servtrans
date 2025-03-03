// -------------------------------------------------------------------------------					
//  Concept Model. File: 					recipient-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: recipient2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "Recipient2FHIR"					
* title = "MyHealth@EURecipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EURecipient Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Recipient data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Recipient"					
* targetUri = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Recipient"					
* group[=].target = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[=].element[+].code = #Recipient.identifier					
* group[=].element[=].display = "Recipient identifier"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.name					
* group[=].element[=].display = "Recipient name"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization). If the recipient is an organization."					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractitionerRole). If it is the organization the professional belong to"					
* group[=].element[+].code = #Recipient.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization). If the recipient is an organization."					
* group[=].element[+].code = #Recipient.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization). If the recipient is an organization."					
* group[=].element[+].code = #Recipient.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization). If the recipient is an organization."					
* group[=].element[+].code = #Recipient.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractitionerRole). If it is the organization the professional belong to"					
* group[=].element[+].code = #Recipient.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractitionerRole). If it is the organization the professional belong to"					
* group[=].element[+].code = #Recipient.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractitionerRole). If it is the organization the professional belong to"					
* group[=].element[+].code = #Recipient.address					
* group[=].element[=].display = "Address"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(Practitioner) OR ValueReference.resolve().ofType(Patient)"					
* group[=].element[+].code = #Recipient.country					
* group[=].element[=].display = "Country"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(Practitioner) OR ValueReference.resolve().ofType(Patient)"					
* group[=].element[+].code = #Recipient.telecom					
* group[=].element[=].display = "Telecom"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(Practitioner) OR ValueReference.resolve().ofType(Patient)"					
* group[=].element[+].code = #Recipient.address					
* group[=].element[=].display = "Address"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.practitioner.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Recipient.country					
* group[=].element[=].display = "Country"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.practitioner.address.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Recipient.telecom					
* group[=].element[=].display = "Telecom"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.practitioner.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(PractitionerRole)"					
//---END					
//---END					
//---END					
//---END					
//---END					
