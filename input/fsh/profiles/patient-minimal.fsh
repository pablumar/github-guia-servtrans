Profile: PatientMinimalMyHealthEu
Parent: Patient
Id: Patient-minimal-myhealtheu
Title:    "Patient: Minimal"
Description: """This profile defines the minimal data set returned by the Myhealth@EU patient 'identification' service"""

// * insert SetFmmandStatusRule ( 1, draft )

* identifier 1.. 
  * ^short = "Patient identifiers"
* name 1..
  * given 1..
  * family 1..
* gender 1..
  * ^short = "Administrative Gender" 
* birthDate 1..
