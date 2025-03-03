Instance: SampleServiceRequest
InstanceOf: ServiceRequestLabMyHealthEu
Title: "ServiceRequest: example"
Description: "ServiceRequest: example of Hemoglobin and Hematocrit panel order"
* identifier.system = "http://example.org"
* identifier.value = "a4310756-a193-4a48-8feb-598c87a1d3f"
* status = #active
* intent = #order
* code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* subject = Reference(SamplePatient)
* specimen = Reference(SampleSpecimen)
* insurance = Reference(SampleCoverage)
* contained = SampleCoverage


Instance: SampleCoverage
InstanceOf: CoverageLabMyHealthEu
Title: "Coverage: example"
Description: "Coverage: example"
Usage: #inline

* payor.display = "Best Insurance"
* beneficiary = Reference (SamplePatient)
* status = #active 
