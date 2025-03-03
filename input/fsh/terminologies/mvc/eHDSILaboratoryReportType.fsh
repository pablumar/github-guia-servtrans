// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSILaboratoryReportType.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSILaboratoryReportTypes					
Id: eHDSILaboratoryReportTypes					
Title: "eHDSI Laboratory Report Types"					
Description: """eHDSI Laboratory Report Types"""					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false
* ^version = "8.0.1"

* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.52 )
* insert setUrl ( eHDSILaboratoryReportTypes ) 
					
* $loinc#11502-2 "Laboratory report"
