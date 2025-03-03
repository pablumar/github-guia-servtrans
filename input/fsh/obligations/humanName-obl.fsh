Profile: HumanNameEuObligations
Parent: HumanNameEu
Id: HumanName-obl-lab-myhealtheu
Title:    "Human Name: Obligations"
Description: "This profile defines obligations for an human Patient name in HL7 FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )

// TEST OBLIGATIONS  ====>

* family insert ObligationSet1
  * extension[fathersFamily] insert ObligationSet3
  * extension[mothersFamily] insert ObligationSet3
* given insert ObligationSet1