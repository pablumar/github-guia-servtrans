Profile: ObservationResultsLaboratoryMyHealthEu
Parent: $Observation-resultslab-eu-lab
Id: Observation-resultslab-lab-myhealtheu
Title:    "Observation Results: Laboratory"
Description: """This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies for the purpose of this guide.
This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study, in the comment element; and references the atomic results of the study as "has-member" child observations.
"""

// check why it fails
// * extension[labTestKit] only Reference(DeviceMyHealthEu)

* extension[certifiedRefMaterialIdentifer] ^short = "Certified Reference Material"
* category[laboratory] ^short = "laboratory (fixed)"
* insert ReportCategoryRule

* code from EHDSILabCodeWithExceptions // check voc binding strength
* status ^short = "Status of this observation"
* subject only Reference(PatientAnimalEu or PatientEuLab or Group or Device or Location)
* subject.reference 1..

* subject only Reference(PatientMyHealthEu)
* performer only Reference(PractitionerMyHealthEu or PractitionerRoleMyHealthEu or 
$Organization-uv-ips)
* performer.extension[performerFunction].valueCodeableConcept from EHDSIPerformerFunction (extensible)
* component ^short = "Laboratory result"
* valueCodeableConcept from EHDSIResultsCodedValueLaboratory
* valueRatio only RatioMyHealthEu
* valueQuantity only QuantityMyHealthEu

* interpretation from EHDSIObservationInterpretationWithExceptions
* method from EHDSILabTechniqueWithExceptions

* specimen only Reference(SpecimenMyHealthEu)
* hasMember only Reference(ObservationResultsLaboratoryMyHealthEu)
* device only Reference (DeviceMeasuringMyHealthEu)

* referenceRange ^short = "Provides guide for interpretation"
  * type from EHDSIReferenceRangeMeaningWithExceptions
  * appliesTo from EHDSIReferenceRangeAppliesToWithExceptions

* component
  * code from EHDSILabCodeWithExceptions // check voc binding strength
  * valueCodeableConcept from EHDSIResultsCodedValueLaboratory
  * valueRatio only RatioMyHealthEu
  * valueQuantity only QuantityMyHealthEu
  * interpretation from EHDSIObservationInterpretationWithExceptions
  * referenceRange ^short = "Provides guide for interpretation"
    * type from EHDSIReferenceRangeMeaningWithExceptions
    * appliesTo from EHDSIReferenceRangeAppliesToWithExceptions


  // MS

* effective[x] insert ObligationMS  
* issued insert ObligationMS
* code insert ObligationMS
* component.code insert ObligationMS
* method insert ObligationMS
* device insert ObligationMS
* basedOn insert ObligationMS
* specimen insert ObligationMS
* performer insert ObligationMS
* value[x] insert ObligationMS
* component.value[x] insert ObligationMS
* interpretation insert ObligationMS
* component.interpretation insert ObligationMS
* referenceRange insert ObligationMS
* component.referenceRange insert ObligationMS
* text insert ObligationMS
