// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSILabSpecimenTypeWithExceptions.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSILabSpecimenTypeWithExceptions
Id: eHDSILabSpecimenTypeWithExceptions
Title: "eHDSI Laboratory Specimen Type with exceptions"
Description: """This Value Set is used for the kind of material that forms the specimen.
It also includes exceptional values"""
				
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSILabSpecimenType