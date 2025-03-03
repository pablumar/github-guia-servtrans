ValueSet:      EHDSILabStudyType
Id:	       eHDSILabStudyType
Title:	       "eHDSI Laboratory Study Types"
Description:   """eHDSI Laboratory Study Types. 
Notes:
Note 1: 26436-6 (Laboratory studies) enables issuing a report putting together observations from multiple specialties (disciplines) in the same text block, allowing delivery of a global interpretation comment at the end of the text block that will be rendered at the end of the report.
Note 2: Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (Microbiology studies (set)) studies.
Note 3: Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) or 18727-8 (SEROLOGY STUDIES) or split between both study types, depending upon the Content Creator Actor’s choice."""

* ^experimental = false
// * ^url = "http://fhir.ehdsi.eu/mvc/eHDSILabStudyType"
* ^version = "8.0.1"

* insert LOINCCopyrightForVS
* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.66 )
* insert setUrl ( eHDSILabStudyType ) 

* $loinc#18717-9	"Blood bank studies (set)"
* $loinc#18719-5	"Chemistry studies (set)"
* $loinc#18722-9	"Fertility studies (set)"
* $loinc#18723-7	"Hematology studies (set)"
* $loinc#18725-2	"Microbiology studies (set)"
* $loinc#18728-6	"Toxicology studies (set)"
* $loinc#26436-6	"Laboratory studies (set)"
