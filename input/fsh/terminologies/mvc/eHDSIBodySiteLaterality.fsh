// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIBodySiteLaterality.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIBodySiteLaterality					
Id: eHDSIBodySiteLaterality					
Title: "eHDSI Body Site Laterality"					
Description: """This Value Set is used for the body structure site laterality qualifier. It indicates the body site laterality from which a laboratory specimen is collected."""					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false
* ^version = "8.0.1"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.68 )
* insert setUrl ( eHDSIBodySiteLaterality ) 


* $sct#7771000  "Left"
* $sct#24028007  "Right"
* $sct#51440002  "Right and left"