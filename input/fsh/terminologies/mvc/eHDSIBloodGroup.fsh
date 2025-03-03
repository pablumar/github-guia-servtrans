// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIBloodGroup.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIBloodGroup
Id: eHDSIBloodGroup
Title: "eHDSI Blood Group"
Description: "The Value Set is used to code the value of patient's blood group + Rh"
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false
* ^version = "8.0.1"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.20)
* insert setUrl ( eHDSIBloodGroup )


* $sct#112144000 "Blood group A"
* $sct#278152006 "Blood group A Rh(D) negative"
* $sct#278149003 "Blood group A Rh(D) positive"
* $sct#165743006 "Blood group AB"
* $sct#278154007 "Blood group AB Rh(D) negative"
* $sct#278151004 "Blood group AB Rh(D) positive"
* $sct#112149005 "Blood group B"
* $sct#278153001 "Blood group B Rh(D) negative"
* $sct#278150003 "Blood group B Rh(D) positive"
* $sct#58460004 "Blood group O"
* $sct#278148006 "Blood group O Rh(D) negative"
* $sct#278147001 "Blood group O Rh(D) positive"