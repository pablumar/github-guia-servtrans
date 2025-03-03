// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSILaboratoryReportType.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSILaboratoryReportType					
Id: eHDSILaboratoryReportType					
Title: "Laboratory Report Type"					
Description: """Laboratory Report Type"""					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* ^status = #active					
* ^experimental = false

* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.52 ) 
					
* $loinc#11502-2 "Laboratory report"
