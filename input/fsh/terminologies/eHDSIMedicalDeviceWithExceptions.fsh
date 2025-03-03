// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIMedicalDeviceWithExceptions.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIMedicalDeviceWithExceptions
Id: eHDSIMedicalDeviceWithExceptions
Title: "eHDSI Medical Device with exceptions"
Description: """eHDSI Medical Device. The Value Set contains exceptional values."""
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIMedicalDevice