Profile: PatientEuObligations
Parent: PatientEuLab
Id: Patient-obl-lab-myhealtheu
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in HL7 FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )

// TEST OBLIGATIONS  ====>

// Obligations at the element level 
// Server obligations
* identifier insert ObligationSet1   
* name.given insert ObligationSet1  
* name.family insert ObligationSet1
* name.text insert ObligationSet2 //can-send
* telecom insert ObligationSet2 //can-send
* gender insert ObligationSet1
* birthDate insert ObligationSet1
* generalPractitioner insert ObligationSet2 //can-send
* address insert ObligationSet1
