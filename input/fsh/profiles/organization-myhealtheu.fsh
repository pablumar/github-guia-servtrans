
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationMyHealthEu
Parent:   $Organization-uv-ips
Id:       Organization-eu-myhealth-eu
Title:    "Organization: Laboratory"
Description: "This profile defines how to represent Organizations in HL7 FHIR for the purpose of this guide."

//-------------------------------------------------------------------------------------------

* address only $Address-eu

// -- Must Support
* name insert ObligationMS
* address insert ObligationMS
* telecom insert ObligationMS