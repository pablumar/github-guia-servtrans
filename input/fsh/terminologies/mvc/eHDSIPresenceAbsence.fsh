// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIPresenceAbsence.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIPresenceAbsence
Id: eHDSIPresenceAbsence
Title: "eHDSI Presence Absence"
Description: "The Value Set is used to describe presence and absence findings (qualifier values) of the Laboratory Test Results"
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
// * ^status = #active
* ^experimental = false
* ^version = "8.0.1"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.77 )
* insert setUrl ( eHDSIPresenceAbsence )

* $sct#441614007  "Present one plus out of three plus"
* $sct#441521003  "Present three plus out of three plus"
* $sct#441517005  "Present two plus out of three plus"
* $sct#260415000  "Not detected"
* $sct#260392004  "Non-patent"
* $sct#260385009  "Negative"
* $sct#260373001  "Detected"
* $sct#260350009  "++++"
* $sct#260349009  "+++"
* $sct#260348001  "++"
* $sct#260347006  "+"
* $sct#52101004  "Present"
* $sct#10828004  "Positive"
* $sct#2667000  "Absent"
* $sct#895231008  "Not detected in pooled specimen"
* $sct#720735008  "Presumptive positive"
* $sct#373067005  "No"
* $sct#373066001  "Yes"
* $sct#264887000  "Not isolated"
* $sct#264868006  "No growth"
* $sct#260413007  "None"
* $sct#260408008  "Weakly positive"
* $sct#260405006  "Trace"
* $sct#260389003  "No reaction"
* $sct#46651001  "Isolated"
* $sct#419984006  "Inconclusive"
* $sct#42425007  "Equivocal"
* $sct#82334004  "Indeterminate"
* $sct#62482003  "Low"
* $sct#11214006  "Reactive"
* $sct#131194007  "Non-Reactive"
* $sct#280416009  "Indeterminate result"
* $sct#75540009  "High"
* $sct#455371000124106  "Invalid result"
* $sct#89292003  "Rare"
* $sct#262008008  "Not performed"
* $sct#17621005  "Normal"
* $sct#277025001  "Proven"