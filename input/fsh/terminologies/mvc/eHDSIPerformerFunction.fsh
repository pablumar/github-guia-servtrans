ValueSet:      EHDSIPerformerFunction
Id:	       eHDSIPerformerFunction
Title:	       "eHDSI Performer Function"
Description:   "Laboratory Performer Function"

* ^experimental = false
* ^version = "8.0.1"

* insert SetFmmandStatusRule ( 1, draft )
* insert setOID ( 1.3.6.1.4.1.12559.11.10.1.3.1.42.76 )
* insert setUrl ( eHDSIPerformerFunction )

* $v3-ParticipationType#TRANS "Transcriber"
* $v3-ParticipationType#PART "Participation"
* $v3-ParticipationType#ATND "attender"
* $v3-ParticipationType#CON "consultant"
* $v3-ParticipationType#AUT "author (originator)"
* $v3-ParticipationType#INF "informant"
* $v3-ParticipationType#ENT "data entry person"
* $v3-ParticipationType#WIT "witness"
* $v3-ParticipationType#PPRF "primary performer"
* $v3-ParticipationType#SPRF "secondary performer"
* $v3-ParticipationType#RESP "responsible party"
* $v3-ParticipationType#VRF "verifier"
* $v3-ParticipationType#AUTHEN "authenticator"
* $v3-ParticipationType#LA "legal authenticator"