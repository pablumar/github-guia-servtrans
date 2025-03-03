Profile: CoverageLabMyHealthEu
Parent: Coverage
Id: Coverage-lab-myhealtheu
Title: "Coverage: Laboratory"
Description: """This profile defines how to represent Health insurance and payment information in HL7 FHIR for the purpose of this guide."""

* payor insert ObligationMS  
* beneficiary insert ObligationMS
* policyHolder insert ObligationMS
* subscriber insert ObligationMS

/* * payor
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "payor"
  * ^slicing.rules = #open
  * ^definition = "Type of payer"

* payor contains organization 0..* 
* payor[organization] only Reference (Organization)
* payor[organization] insert ObligationMS
* beneficiary insert ObligationMS
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "payor"
  * ^slicing.rules = #open
  * ^definition = "Type beneficiary"
* payor[organization] insert ObligationMS
* policyHolder insert ObligationMS
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "payor"
  * ^slicing.rules = #open
  * ^definition = "Type of policyHolder"
* subscriber insert ObligationMS
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "payor"
  * ^slicing.rules = #open
  * ^definition = "Type of subscriber" */
  