Instance: SamplePatient
InstanceOf: PatientMyHealthEu
Title: "Patient: example"
Description: "Patient: example"
//name
* name.family = "Doe"
* name.given = "John"
* name.given[1] = "Albertus"
 
* gender = #male
 
//Birth date, verified by passport
* birthDate = "1989-12-12"
 
//the current NHI
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier.value = "89121210976"
 
//physical address
* address.line = "Breydelstraat 4"
* address.city = "Brussels"
* address.postalCode = "1000"
* address.country = "BE"