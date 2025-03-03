ValueSet:      EHDSIReferenceRangeMeaningWithExceptions
Id:	       	   eHDSIReferenceRangeMeaningWithExceptions
Title:	       "eHDSI Reference Range Meaning with exceptions"
Description:   "This value set defines a set of codes for a reference range qualifier. It also includes exceptional values."

* ^experimental = false

* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.74 )

// * ^url = https://terminology.ehdsi.eu/ValueSets/eHDSIReferenceRangeMeaning
* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIReferenceRangeMeaning