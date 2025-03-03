// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIResultsCodedValueLaboratory.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIResultsCodedValueLaboratory
Id: eHDSIResultsCodedValueLaboratory
Title: "eHDSI Results Coded Value Laboratory with exceptions"
Description: """The Value Set is used to code the value of laboratory observation result.
It is defined as the union of:
(a) eHDSIBloodGroup
(b) eHDSIPresenceAbsence
(c) eHDSIMicroorganism
(d) eHDSIExceptionalValue"""
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.20)

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIBloodGroup
* codes from valueset EHDSIPresenceAbsence
* codes from valueset EHDSIMicroorganism