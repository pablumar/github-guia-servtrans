
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerMyHealthEu
Parent:   $Practitioner-eu-lab
Id:       Practitioner-eu-myhealth-eu
Title:    "Practitioner: Laboratory"
Description: "This profile defines how to represent Practitioners in HL7 FHIR for the purpose of this guide."

//-------------------------------------------------------------------------------------------

* address only $Address-eu

// -- Must Support

* identifier insert ObligationMS
* name insert ObligationMS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleMyHealthEu
Parent:   $PractitionerRole-eu-lab
Id:       PractitionerRole-eu-myhealth-eu
Title:    "PractitionerRole: Laboratory"
Description: "This profile defines how to represent Practitioners (with thier roles) in HL7 FHIR for the purpose of this guide."

//-------------------------------------------------------------------------------------------

* practitioner only Reference (PractitionerMyHealthEu)
* code from EHDSIHealthcareProfessionalRole

// -- Must Support
* identifier insert ObligationMS
* practitioner insert ObligationMS
* organization insert ObligationMS
