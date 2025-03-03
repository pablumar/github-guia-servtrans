// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIAnimalSpecies.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIAnimalSpecies
Id: eHDSIAnimalSpecies
Title: "eHDSI Animal Species"
Description: "The Value Set is used to code the animal species of specimen subject (animal of the patient)"
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false
* ^version = "8.0.1"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID (1.3.6.1.4.1.12559.11.10.1.3.1.42.72)
* insert setUrl ( eHDSIAnimalSpecies ) 

* $sct#125097000 "Capra hircus"
* $sct#125099002 "Ovis aries"
* $sct#34618005 "Bos taurus"
* $sct#388445009 "Equus"
* $sct#125076001 "Domestic Guinea pig"
* $sct#448169003 "Domestic cat"
* $sct#448771007 "Domestic dog"