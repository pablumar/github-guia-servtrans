// -------------------------------------------------------------------------------					
//  Concept Model. File: 					labRpt-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: labRpt2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "LabRpt2FHIR"					
* title = "MyHealth@EULab Report to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EULab Report to this guide Map"					
* purpose = "It shows how the Laboratory Report data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/LabReport"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Bundle-lab-myhealtheu"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/LabReport"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/DiagnosticReport-lab-myhealtheu"					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = "Report header"					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = "Patient/subject"					
* group[=].element[=].target.code = #DiagnosticReport.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = "Health insurance and payment information"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "basedOn.resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)"					
* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = "Information recipient"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "Author"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "Author"					
* group[=].element[=].target.code = #DiagnosticReport.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the perfomer"					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = "Legal authenticator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = "Result validator"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = "Laboratory report metadata"					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.documentId					
* group[=].element[=].display = "Document Id"					
* group[=].element[=].target.code = #DiagnosticReport.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it is the identifier of the report indipendently by its version. Otherwise you should refer to the Bundle.indentifier"					
* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = "Document type"					
* group[=].element[=].target.code = #DiagnosticReport.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = "Document status"					
* group[=].element[=].target.code = #DiagnosticReport.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "For FHIR R4 the more granular status is recorded in the DiagnosticReport.status"					
* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = "Report date and time"					
* group[=].element[=].target.code = #DiagnosticReport.effectiveDateTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = "Document title"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.metadata.studyType					
* group[=].element[=].display = "Study type"					
* group[=].element[=].target.code = #DiagnosticReport.category:studyType					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = "Report custodian"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.metadata.confidentiality					
* group[=].element[=].display = "Confidentiality"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource"					
* group[=].element[+].code = #LabReport.header.metadata.language					
* group[=].element[=].display = "Language"					
* group[=].element[=].target.code = #DiagnosticReport.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.version					
* group[=].element[=].display = "Version"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Mapped in the Composition resource if it refers to the business report version"					
* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = "Order"					
* group[=].element[=].target.code = #DiagnosticReport.basedOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "basedOn.resolve().ofType(ServiceRequest)"					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "Specimen information"					
* group[=].element[=].target.code = #DiagnosticReport.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "Specimen information"					
* group[=].element[=].target.code = #DiagnosticReport.result.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "result.resolve().ofType(Observation)"					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "Results data elements"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.pdf					
* group[=].element[=].display = "PDF document"					
* group[=].element[=].target.code = #DiagnosticReport.presentedForm					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If the PDF to be added is the representation of the entire Laboratory report, then this will be recorded in the optional element presentedForm
In case of images or other kinds of additional data (that can be a pdf document) used as support for the interpretation of the report, this is realized by using the optional element media."					
* group[=].element[+].code = #LabReport.media					
* group[=].element[=].display = "Media"					
* group[=].element[=].target.code = #DiagnosticReport.media					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/LabReport"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
					
* group[=].element[+].code = #LabReport.header					
* group[=].element[=].display = "Report header"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.subject					
* group[=].element[=].display = "Patient/subject"					
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.payer					
* group[=].element[=].display = "Health insurance and payment information"					
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "extension(http://fhir.ehdsi.eu/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest).insurance.resolve().ofType(Coverage)"					
* group[=].element[+].code = #LabReport.header.informationRecipient					
* group[=].element[=].display = "Information recipient"					
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.author					
* group[=].element[=].display = "Author"					
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.legalAuthenticator					
* group[=].element[=].display = "Legal authenticator"					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The person authenticated the content and accepted legal responsibility for its content.
attester.where(mode='legal')"					
* group[=].element[+].code = #LabReport.header.validator					
* group[=].element[=].display = "Result validator"					
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The person authenticated the content in their professional capacity.
attester.where(mode='professional')"					
* group[=].element[+].code = #LabReport.header.metadata					
* group[=].element[=].display = "Laboratory report metadata"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.documentId					
* group[=].element[=].display = "Document Id"					
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the identifier of the report indipendently by its version. Otherwise you should refer to the Bundle.indentifier"					
* group[=].element[+].code = #LabReport.header.metadata.type					
* group[=].element[=].display = "Document type"					
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.status					
* group[=].element[=].display = "Document status"					
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "For FHIR R4 the more granular status is recorded in the DiagnosticReport.status. Mapping rules for valuing the Compisition.status are specified in http://fhir.ehdsi.eu/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus"					
* group[=].element[+].code = #LabReport.header.metadata.dateTime					
* group[=].element[=].display = "Report date and time"					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.title					
* group[=].element[=].display = "Document title"					
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.studyType					
* group[=].element[=].display = "Study type"					
* group[=].element[=].target.code = #Composition.category:studyType					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #LabReport.header.metadata.custodian					
* group[=].element[=].display = "Report custodian"					
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.confidentiality					
* group[=].element[=].display = "Confidentiality"					
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.language					
* group[=].element[=].display = "Language"					
* group[=].element[=].target.code = #Composition.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #LabReport.header.metadata.version					
* group[=].element[=].display = "Version"					
* group[=].element[=].target.code = #Composition.extension:versionNumber					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if it refers to the business report version"					
* group[=].element[+].code = #LabReport.order					
* group[=].element[=].display = "Order"					
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "extension(http://fhir.ehdsi.eu/laboratory/StructureDefinition/composition-basedOn-order-or-requisition).resolve().ofType(ServiceRequest)"					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "Specimen information"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If no sub sections"					
* group[=].element[+].code = #LabReport.specimen					
* group[=].element[=].display = "Specimen information"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If sub sections"					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "Results data elements"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If no sub sections"					
* group[=].element[+].code = #LabReport.result					
* group[=].element[=].display = "Results data elements"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If sub sections"					
* group[=].element[+].code = #LabReport.pdf					
* group[=].element[=].display = "PDF document"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #LabReport.media					
* group[=].element[=].display = "Media"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
