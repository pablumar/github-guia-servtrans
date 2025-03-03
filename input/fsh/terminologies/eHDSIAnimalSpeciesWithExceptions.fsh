// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIAnimalSpeciesWithExceptions.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAnimalSpeciesWithExceptions
Id: eHDSIAnimalSpeciesWithExceptions
Title: "eHDSI Animal Species with exceptions"
Description: "The Value Set is used to code the animal species of specimen subject (animal of the patient). It also includes exceptional values."
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID (1.3.6.1.4.1.12559.11.10.1.3.1.42.72)

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIAnimalSpecies