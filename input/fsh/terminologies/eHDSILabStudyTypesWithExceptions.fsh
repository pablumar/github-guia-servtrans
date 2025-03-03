ValueSet:      EHDSILabStudyTypeWithExceptions
Id:	       eHDSILabStudyTypeWithExceptions
Title:	       "eHDSI Laboratory Study Types with exceptions"
Description:   """eHDSI Laboratory Study Types. 
Notes:
Note 1: 26436-6 (Laboratory studies) enables issuing a report putting together observations from multiple specialties (disciplines) in the same text block, allowing delivery of a global interpretation comment at the end of the text block that will be rendered at the end of the report.
Note 2: Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (Microbiology studies (set)) studies.
Note 3: Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) or 18727-8 (SEROLOGY STUDIES) or split between both study types, depending upon the Content Creator Actor’s choice.
It includes also exceptional values."""	

* ^experimental = false
// * ^url = "http://fhir.ehdsi.eu/mvc/eHDSILabStudyType"

* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )

* codes from valueset EHDSIExceptionalValue
* codes from valueset EHDSILabStudyType
