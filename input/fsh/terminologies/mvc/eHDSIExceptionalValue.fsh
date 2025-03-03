ValueSet:      EHDSIExceptionalValue
Id:	       eHDSIExceptionalValue
Title:	       "eHDSI Exceptional Value"
Description:   "The Value Set is used to code exceptional values for the required binding in FHIR IGs"

* ^experimental = false
* ^version = "8.0.1"

* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.81 ) 

* insert SetFmmandStatusRule ( 1, draft )
* insert setUrl ( eHDSIExceptionalValue ) 

* $v3-NullFlavor#OTH "other" // not in the value set
* $v3-NullFlavor#UNC "un-encoded" // not coded
* $v3-NullFlavor#UNK "unknown" // unknown