// -------------------------------------------------------------------------------					
//  Concept Model. File: 					author-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: author2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "LabRptAuthor2FHIR"					
* title = "MyHealth@EUAuthor to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUAuthor Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Author data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Author"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Bundle-lab-myhealtheu"					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Author"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "Author identifier"					
* group[=].element[=].target.code = #Composition.author.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #Composition.author.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and author.ofType(Practitioner)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #Composition.author.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and  author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #Composition.author.displayName					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "Author organization"					
* group[=].element[=].target.code = #Composition.author.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "Author organization"					
* group[=].element[=].target.code = #Composition.author.owner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"					
* group[=].element[+].code = #Author.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #Composition.author.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #Composition.author.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #Composition.author.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #Composition.author.owner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"					
* group[=].element[+].code = #Author.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #Composition.author.owner.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"					
* group[=].element[+].code = #Author.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #Composition.author.owner.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Author"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/DiagnosticReport-lab-myhealtheu"					
					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "Author identifier"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "Author identifier"					
* group[=].element[=].target.code = #DiagnosticReport.performer.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and 
resultsInterpreter.resolve().ofType(Practitioner)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(Practitioner)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "Author name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "Author organization"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "Author organization"					
* group[=].element[=].target.code = #DiagnosticReport.performer.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #DiagnosticReport.performer.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #DiagnosticReport.performer.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
