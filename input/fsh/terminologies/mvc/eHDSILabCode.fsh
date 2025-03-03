ValueSet:      EHDSILabCode
Id:	       	   eHDSILabCode
Title:	       "eHDSI Laboratory Codes"
Description:   "This Value Set is used for the standard laboratory codes"

* ^version = "8.0.1"
* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.70 )
* insert setUrl ( eHDSILabCode ) 

* include codes from system $loinc where CLASSTYPE = "1" and STATUS = "ACTIVE"