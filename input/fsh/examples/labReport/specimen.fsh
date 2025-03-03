Instance: SampleSpecimen
InstanceOf: SpecimenMyHealthEu
Title: "Specimen: bodyStructure example"
Description: "Specimen: example of Blood specimen with BodyStructure specified"
* contained = BodyStructureSample
* status = #available
* type = $sct#119297000  "Blood specimen"
* type.text = "Blood"
* collection.extension[bodySite].valueReference = Reference( BodyStructureSample)


Instance: BodyStructureSample
InstanceOf: BodyStructureMyHealthEu
Title: "BodyStructure: example"
Description: "BodyStructure: example"
Usage: #inline

* patient = Reference (SamplePatient)
* location = $sct#818983003 "Abdomen"
* morphology = $sct#789563006 "Arterial ulcer"

