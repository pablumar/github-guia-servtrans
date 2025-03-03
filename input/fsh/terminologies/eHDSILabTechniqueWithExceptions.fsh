// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSILabTechniqueWithExceptions.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSILabTechniqueWithExceptions
Id: eHDSILabTechniqueWithExceptions
Title: "eHDSI Laboratory Technique with exceptions"
Description: "This Value Set is used to encode laboratory technique for the result measurement. It also includes exceptional values."
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.79)

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSILabTechnique