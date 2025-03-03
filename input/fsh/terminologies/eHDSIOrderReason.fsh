ValueSet:      EHDSIOrderReason
Id:	       eHDSIOrderReason
Title:	       "eHDSI Order Reason"
Description:   "The Value Set is used to code clinical conditions relevant for the laboratory results interpretation.
It is defined as the union of:
(a) EHDSIIllnessandDisorder
(b) EHDSIRareDisease
(c) EHDSIReactionAllergy
(d) EHDSIExceptionalValue"

* ^status = #draft
* ^experimental = false


//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.5)

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIIllnessandDisorder
* codes from valueset EHDSIRareDisease
* codes from valueset EHDSIReactionAllergy
