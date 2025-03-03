ValueSet:      EHDSIReferenceRangeMeaning
Id:	       	   eHDSIReferenceRangeMeaning
Title:	       "eHDSI Reference Range Meaning"
Description:   "This value set defines a set of codes for a reference range qualifier"

* ^experimental = false
* ^version = "8.0.1"

* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.74 )
* insert setUrl ( eHDSIReferenceRangeMeaning )

// * ^url = https://terminology.ehdsi.eu/ValueSets/eHDSIReferenceRangeMeaning
* $reference-range-meaning#normal "Normal Range"
* $reference-range-meaning#recommended "Recommended Range"
* $reference-range-meaning#treatment "Treatment Range"
* $reference-range-meaning#therapeutic "Therapeutic Desired Level"
* $reference-range-meaning#pre-puberty "Pre-Puberty"
* $reference-range-meaning#follicular "Follicular Stage"
* $reference-range-meaning#midcycle "MidCycle"
* $reference-range-meaning#luteal "Luteal"
* $reference-range-meaning#postmenopausal "Post-Menopause"
* $reference-range-meaning#pre "Pre Therapeutic Desired Level"
* $reference-range-meaning#post "Post Therapeutic Desired Level"