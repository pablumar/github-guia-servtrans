ValueSet: EHDSIReferenceRangeAppliesToWithExceptions
Id: eHDSIReferenceRangeAppliesToWithExceptions
Title: "eHDSI Reference Range Applies To with exceptions"
Description: "This value set defines a set of codes that can be used to indicate the particular target population the reference range applies to. It also includes exceptional values."

* ^experimental = false

* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.75 )

// * ^url = https://terminology.ehdsi.eu/ValueSets/eHDSIReferenceRangeAppliesTo
* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIReferenceRangeAppliesTo