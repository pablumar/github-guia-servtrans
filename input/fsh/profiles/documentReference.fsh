Profile: DocumentReferenceMyHealthEu
Parent: DocumentReference
Id: DocumentReference-minimal-myhealtheu
Title:    "DocumentReference: Minimal"
Description: """This profile defines the minimal data set returned by the Myhealth@EU Document search service"""

// * insert SetFmmandStatusRule ( 1, draft )

* masterIdentifier 1.. 
* identifier 0.. 
  * ^short = "Other document identifiers"
* status = #current
  * ^short = "Status of this document reference."
* docStatus ^short = "Composition status"
* date 1..
* type 1.. 
* type from EHDSILaboratoryReportType 
* category 
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"  
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this report. Two basic categories has been selected for the lab : laboratory specialty and Study type. Laboratory specialty is characteristic of the laboratory that produced the test result while Study type is an arbitrary classificion of the test type."
* category contains studyType 0..*
* category[studyType] from EHDSILabStudyType
* category[studyType]
  * ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
  * ^definition = "Laboratory services, i.e., results of tests performed, could be characterized using typology of services, commonly called study types. Study type could be seen as an attribute or grouping mechanism that assigns a common clinical sense to certain types of laboratory test results., e.g., Hemoglobin, Platelet count, etc. belongs to 'Hematology study'."
  * ^comment = "In comparison to the laboratory specialty which is an attribute of laboratory, study type is a categorization of laboratory service. It needs to be mentioned that classification of test to study types in not standardized."
* subject 1..
* subject only Reference(PatientMinimalMyHealthEu)
* description 1..
* content obeys docref-no-data
  * attachment
    * contentType ^short = "Type of data (e.g. PDF)"
    * url ^short = "Where the doc can be get"
    * data ^short = "Used only for PDF"
* context.related only Reference (DiagnosticReport)
// required if it is a Lab Report ?


Invariant:   docref-no-data
Description: "attachment.data shall not be present if the document is not a PDF"
* severity = #error
* expression = "attachment.where(contentType != 'application/pdf').data.empty()"

