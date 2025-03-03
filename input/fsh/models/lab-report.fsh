// -------------------------------------------------------------------------------				
//  Logical Model				lab-report.fsh
// -------------------------------------------------------------------------------				
Logical: LabReportMyHEU				
Id: LabReport				
Title: "Laboratory Result Content"				
Description:  """Laboratory Report Content as defined by the MyHealth@EU business requirement '13.01 Create the MyHealth@EU Laboratory Result Report Content'.
"""				
* header 1..1 BackboneElement "Report header" """Report header"""				
* header.subject 1..1 http://fhir.ehdsi.eu/laboratory/StructureDefinition/Subject "Patient/subject" """Identification of the patient/subject  and Patient/subject related contact information"""				
* header.payer 0..1 http://fhir.ehdsi.eu/laboratory/StructureDefinition/Payer "Health insurance and payment information" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""				
* header.informationRecipient 0..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/Recipient "Information recipient" """Intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist"""				
* header.author 1..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/Author "Author" """By whom the Laboratory result report or a subset of its results was authored"""				
* header.legalAuthenticator 1..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/LegalAuthenticator "Legal authenticator" """The person taking responsibility for the medical content of the document"""				
* header.validator 0..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/Validator "Result validator" """Result validator"""				
* header.metadata 1..1 BackboneElement "Laboratory report metadata" """Laboratory report metadata"""				
* header.metadata.documentId 1..1 Identifier "Document Id" """Unique identifier of the document"""				
* header.metadata.type 1..* CodeableConcept "Document type" """A coded type of the document. Fixed value 'Laboratory report'"""				
* header.metadata.status 1..1 CodeableConcept "Document status" """The status of the laboratory test result report. E.g., preliminary, final"""				
* header.metadata.dateTime 0..1 dateTime "Report date and time" """Date and time of the result report creation"""				
* header.metadata.title 1..1 string "Document title" """Document title, e.g. 'Laboratory Result report'"""				
* header.metadata.studyType 0..* CodeableConcept "Study type" """Type (or types) of the laboratory study performed."""				
* header.metadata.custodian 0..1 BackboneElement "Report custodian" """Organization that is in charge of maintaining the laboratory report"""				
* header.metadata.confidentiality 0..1 CodeableConcept "Confidentiality" """Level of confidentiality of the document. Implicit value is normal."""				
* header.metadata.language 1..* CodeableConcept "Language" """Language in which the document is written. Language is expressed by the ISO language code."""				
* header.metadata.version 0..1 string "Version" """Version of the document"""				
* order 1..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/Order "Order" """Order information (Laboratory Result Report could respond to multiple test orders)
Order reason (Laboratory Result Report could respond to multiple reasons)
"""				
* specimen 1..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/SpecimenLab "Specimen information" """Specimen information"""				
* result 1..* http://fhir.ehdsi.eu/laboratory/StructureDefinition/Result "Results data elements" """Results data elements"""				
* pdf 0..* Attachment "PDF document" """Entire report as issued- pdf format"""				
* media 0..* Attachment "Media" """Media attachments."""				
//--- END				
//--- END				
//--- END				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
* header insert ObligationMS				
* header.subject insert ObligationMS				
 				
 				
* header.author insert ObligationMS				
* header.legalAuthenticator insert ObligationMS				
 				
* header.metadata insert ObligationMS				
* header.metadata.documentId insert ObligationMS				
* header.metadata.type insert ObligationMS				
* header.metadata.status insert ObligationMS				
* header.metadata.dateTime insert ObligationMS				
* header.metadata.title insert ObligationMS				
 				
* header.metadata.custodian insert ObligationMS				
* header.metadata.confidentiality insert ObligationMS				
* header.metadata.language insert ObligationMS				
* header.metadata.version insert ObligationMS				
* order insert ObligationMS				
* specimen insert ObligationMS				
* result insert ObligationMS				
* pdf insert ObligationMS				
 				
//--- END				
//--- END				
//--- END				
//--- END				
