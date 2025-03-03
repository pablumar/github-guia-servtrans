ValueSet:      EHDSIReferenceRangeAppliesTo
Id:	       	   eHDSIReferenceRangeAppliesTo
Title:	       "eHDSI Reference Range Applies To"
Description:   "This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to"

* ^experimental = false
* ^version = "8.0.1"

* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.75 )
* insert setUrl ( eHDSIReferenceRangeAppliesTo )

// * ^url = https://terminology.ehdsi.eu/ValueSets/eHDSIReferenceRangeAppliesTo
* $sex-parameter-for-clinical-use#female-typical "Apply female-typical setting or reference range"
* $sex-parameter-for-clinical-use#male-typical "Apply male-typical setting or reference range"