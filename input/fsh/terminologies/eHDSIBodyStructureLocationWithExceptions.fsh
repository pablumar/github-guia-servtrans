// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIBodyStructureLocationWithExceptions.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIBodyStructureLocationWithExceptions
Id: eHDSIBodyStructureLocationWithExceptions
Title: "eHDSI Body Structure Location Qualifier with exceptions"
Description: "This Value Set is used for the body structure location qualifier. Concepts modifying the anatomic location.
It also includes exceptional values."
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIBodyStructureLocation