// -------------------------------------------------------------------------------				
//  Logical Model				lab-specimen.fsh
// -------------------------------------------------------------------------------				
Logical: SpecimenLabMyHEU				
Id: SpecimenLab				
Title: "Specimen information"				
Description:  """Specimen information. Section A4 of the MyHealth@EUguideline."""				
* identifier 0..* Identifier "Specimen identifier" """An identifier of the specimen which is unique within in a defined scope. Example: identifier assigned by Specimening system, identifier assigned by laboratory etc. Multiple identifiers can be used. - Preferred system(s): """				
* speciesType 0..* CodeableConcept "Type of species" """Biologic type of species for laboratory result reports bound to non-human subjects. - Preferred system(s): SNOMED CT"""				
* material 0..* CodeableConcept "Material" """Specimen material. - Preferred system(s): SNOMED CT"""		 		
* collected 0..* dateTime "Collection period" """Collection date time or period. - Preferred system(s): ISO 8601"""				
* anatomicLocation 0..* BackboneElement "Anatomic location" """Anatomic location (body location, laterality) where the material is collected, e.g. Elbow, left - Preferred system(s): SNOMED CT"""				
* anatomicLocation.location 0..* CodeableConcept "Body location" """The anatomical location or region of the specimen"""				
* anatomicLocation.laterality 0..* CodeableConcept "Laterality" """Body side of the body location, if needed to distinguish from a similar location on the other side of the body."""				
* anatomicLocation.qualifier 0..* CodeableConcept "Specimen site qualifier" """Qualifier to refine the anatomical location. These include qualifiers for relative location, directionality, number, and plane."""				
* morphology 0..* CodeableConcept "Morphology" """Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer. - Preferred system(s): SNOMED CT"""				
* sourceDevice 0..* BackboneElement "Source Device" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter
 - Preferred system(s): SNOMED CT
 - Preferred system(s): EMDN"""				
* sourceDevice.type 0..* CodeableConcept "Type of device" """If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"""				
* sourceDevice.name 0..* string "Device Name" """The name of the device as given by the manufacturer"""				
* sourceDevice.modelName 0..* string "Model Name" """Model name of the device"""				
* sourceDevice.identifier 0..* Identifier "Device Identifier" """Unique device identifier """				
* sourceDevice.manufacturer 0..* string "Manufacturer" """Name of device manufacturer"""				
* collectionMethod 0..* CodeableConcept "Collection procedure/method" """If relevant for the results, the method of obtaining the specimen."""				
* receivedDateTime 0..* dateTime "Received date" """Date and time that the material is handed over at the laboratory or specimen collection Centre."""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
* identifier insert ObligationMS				
 				
* material insert ObligationMS				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
