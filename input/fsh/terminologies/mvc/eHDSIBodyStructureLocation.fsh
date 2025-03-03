// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIBodyStructureLocation.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIBodyStructureLocation
Id: eHDSIBodyStructureLocation
Title: "eHDSI Body Structure Location Qualifier"
Description: "This Value Set is used for the body structure location qualifier. Concepts modifying the anatomic location."
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active					
* ^experimental = false
* ^version = "8.0.1"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.80)
* insert setUrl ( eHDSIBodyStructureLocation ) 

* $sct#49370004 "Lateral"
* $sct#264217000 "Superior"
* $sct#261089000 "Inferior"
* $sct#255551008 "Posterior"
* $sct#7771000 "Left"
* $sct#24028007 "Right"
* $sct#261183002 "Upper"
* $sct#261122009 "Lower"
* $sct#255561001 "Medial"
* $sct#46053002 "Distal"
* $sct#40415009 "Proximal"
* $sct#255549009 "Anterior"
* $sct#26283006 "Superficial"
* $sct#795002 "Deep"
* $sct#57195005 "Basal"
* $sct#3583002 "Caudal"
* $sct#66787007 "Cephalic"