// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIMorphologicAbnormalityWithExceptions.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIMorphologicAbnormalityWithExceptions
Id: eHDSIMorphologicAbnormalityWithExceptions
Title: "eHDSI Morphologic Abnormality with exceptions"
Description: """The Value Set is used to code the morphological abnormalities of the anatomical location where the material is taken.
It also includes exceptional values."""
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.69 )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIMorphologicAbnormality