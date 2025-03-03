Instance: SampleBloodGroupObservation
InstanceOf: ObservationResultsLaboratoryMyHealthEu
Title: "Observation: Blood Group"
Description: "Observation: example of Blood Group result"

* status = #final
* category[laboratory] = $observation-category#laboratory
* category[studyType] = $loinc#18717-9	"Blood bank studies (set)"
// * category[+] = $v2-0074#MB "Blood bank studies"
* code = $loinc#883-9 "ABO group [Type] in Blood"
* code.text = "Blood Group"
* subject = Reference(SamplePatient)
* effectiveDateTime = "2023-03-09T13:35:00+01:00"
* performer[+].display = "Dr. Patrick Dempsey"
* valueCodeableConcept = $sct#112144000 "Blood group A (finding)"
* valueCodeableConcept.text = "A"