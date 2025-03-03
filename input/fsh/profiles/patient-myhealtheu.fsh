Profile: PatientMyHealthEu
// Parent: http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab
Parent: Patient
Id: Patient-lab-myhealtheu
Title: "Patient: Laboratory"
Description: """This profile defines how to represent Patients in HL7 FHIR for the purpose of this guide."""

* insert ImposeProfile($Patient-eu-lab, 0)
// * insert ImposeProfile($Patient-uv-ips, 1)


* extension contains
     $sexForClinicalUse named sex-for-clinical-use 0..*

// Commented to avoid issue with the Publisher... it introduces a CodeableReference 
// * extension[sex-for-clinical-use].extension[value].valueCodeableConcept from SexParameterForClinicalUse

* identifier ^short = "An identifier for this patient."
* name only $HumanName-eu
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.text ^short = "Textual full name"
* name.family 1..1
* name.given 1..
* telecom ^short = "A contact detail for the patient"
* gender ^short = "Administrative gender"
* birthDate 1..
* address only $Address-eu
* address.country.extension[countryCode].valueCoding from EHDSICountry



// -- Must Support

* extension[sex-for-clinical-use] insert ObligationMS
* identifier insert ObligationMS
* name.family insert ObligationMS
* name.given insert ObligationMS
* telecom insert ObligationMS
* gender insert ObligationMS
* birthDate insert ObligationMS
* address insert ObligationMS
* address.country.extension[countryCode] insert ObligationMS