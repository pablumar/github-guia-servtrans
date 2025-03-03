ValueSet:      EHDSIObservationInterpretationWithExceptions
Id:	       eHDSIObservationInterpretationWithExceptions
Title:	       "eHDSI Observation Interpretation with exceptions"
Description:   """This Value Set is used for a rough qualitative interpretation of the Laboratory Observation Results.
It also includes exceptional values."""
//* ^status = #draft
* ^experimental = false

* insert SetFmmandStatusRule ( 1, draft )
//* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.73 )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIObservationInterpretation