				
ValueSet: EHDSIBodySiteWithExceptions					
Id: eHDSIBodySiteWithExceptions					
Title: "eHDSI Body Site with exceptions"					
Description: """The Value Set is used for the details about the anatomical location of a specimen in the Laboratory Result Report or the target body location of a procedure in the Patient Summary.
It includes also exceptional values."""					
			

* ^experimental = false
* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSIBodySite