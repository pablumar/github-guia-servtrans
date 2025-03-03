// -------------------------------------------------------------------------------				
//  Logical Model				lab-result.fsh
// -------------------------------------------------------------------------------				
Logical: ResultLabMyHEU				
Id: Result				
Title: "Results data elements"				
Description:  """Results data elements. Section A5 of the MyHealth@EUguideline."""				
* narrative 0..1 BackboneElement "Laboratory report narrative" """Laboratory report narrative"""				
* narrative.report 0..* Narrative "Narrative report" """Entire report (textual summary inside the laboratory result report document) as issued by the laboratory."""				
* narrative.notes 0..* Narrative "Comments, interpretation and recommendations" """Comments, such as a textual interpretation or advice accompanying the result report, for example."""		 		
* observation 0..* BackboneElement "Observation details" """The report could consist of multiple observations, some observations can have multiple component observations"""				
* observation.dateTime 1..1 CodeableConcept "Observation date" """Date and time of the observation"""				
* observation.code 1..* CodeableConcept "Observation code" """Observation code"""				
* observation.code.code 1..* Coding "Observation code" """Code representing the observation using the agreed code systems"""				
* observation.code.name 1..1 string "Observation name" """Full name of the observation according to the used test coding standard"""				
* observation.code.originalName 0..* string "Observation original name" """Original (conventional) name of the observation as used by the laboratory"""				
* observation.code.displayName 0..* string "Observation display name" """Simplified (short name of the observation) for display."""				
* observation.method 0..* CodeableConcept "Observation method" """Observation method (measurement principle) to obtain the result."""				
* observation.device 0..* CodeableConcept "Observation device" """(Device (analyzer), laboratory test kit and used calibrator information (identifier, type, name, model, manufacturer)"""				
* observation.device.name 0..* CodeableConcept "Device Name" """The name of the device as given by the manufacturer"""				
* observation.device.modelName 0..* string "Model Name" """Model name of the device"""				
* observation.device.identifier 0..* string "Device Identifier" """Unique device identifier"""				
* observation.device.type 0..* Identifier "Device Type" """Kind or Type of device"""				
* observation.device.manufacturer 0..* string "Manufacturer" """Name of device manufacturer"""				
* observation.device.labKit 0..* BackboneElement "Laboratory Kit Information" """Laboratory Kit Information"""				
* observation.referenceMaterial 0..* BackboneElement "Certified Reference Material" """Information about which end-user calibrator the laboratory has been used for the measurement to indicate the metrological traceability chain."""				
* observation.order 0..* BackboneElement "Order" """Identifies order and order placer this observation belongs to."""				
* observation.specimen 0..* BackboneElement "Specimen" """Identifies specimen this observation refers to"""				
* observation.performer 0..* BackboneElement "Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole Laboratory Report document."""				
* observation.performer.identifier 0..* Identifier "Performer identifier" """Health professional identification number"""				
* observation.performer.name 0..* HumanName "Performer Name" """Name of the Health professional"""				
* observation.performer.telecom 0..* ContactPoint "Performer telecom" """Contact details that are specific to the role/location/service"""				
* observation.performer.role 0..* CodeableConcept "Performer Role" """Health professional role"""				
* observation.performer.organization 0..* BackboneElement "Performer Organization" """(Organization where the roles of practitioner are available or organization as the performer)"""				
* observation.performer.organization.name 0..* string "Organization Name" """Name of the organization"""				
* observation.performer.organization.address 0..* Address "Organization Address" """Address of the organization"""				
* observation.performer.organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
* observation.reporter 0..* BackboneElement "Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""				
* observation.reporter.name 0..* HumanName "Reporter Name" """Name of the Reporter"""				
* observation.reporter.telecom 0..* ContactPoint "Reporter telecom" """Contact details that are specific to the role/location/service"""				
* observation.reporter.role 0..* CodeableConcept "Reporter Role" """Healthcare professional role"""				
* observation.reporter.organization 0..* BackboneElement "Reporter Organization" """(Organization where the roles of reporter are available)"""				
* observation.reporter.organization.name 0..* string "Organization Name" """Name of the organization"""				
* observation.reporter.organization.address 0..* Address "Organization Address" """Address of the organization"""				
* observation.reporter.organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
* observation.result 0..* BackboneElement "Observation result" """Result of the observation including text, numeric and coded results of the measurement with measurement units and measurement uncertainty and other aspects necessary for proper interpretation and comparability of the result of the observation. Content of the observation result will vary according to the type of the observation."""				
* observation.result.text 0..* string "Textual Result" """Narrative text result"""				
* observation.result.numeric 0..* Quantity "Numeric Result" """A numeric value or interval (open or closed) of the result, Result units of the measurement should be provided Measurement uncertainty interval are provided if needed."""				
* observation.result.coded 0..* CodeableConcept "Coded Result" """A coded result from a selected coding system(s). This could be a code describing bacteria or other microorganism identified, description of urinary concernment, code explaining technical reason why the test could not be done etc."""				
* observation.interpretation 0..* BackboneElement "Observation interpretation" """Information about reference intervals and result interpretation"""				
* observation.interpretation.code 0..* CodeableConcept "Result interpretation code" """Codes identifying interpretations of observations"""				
* observation.interpretation.referenceRange 0..* Range "Standard reference range" """Provides guide for interpretation of result. Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied."""				
* observation.description 0..* Narrative "Result description" """Comments and narrative representation of the observation result and findings."""				
* observation.accreditationStatus 0..* BackboneElement "Accreditation status" """Accreditation status of the laboratory for the particular observation."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
 				
 				
 				
 				
* observation.dateTime insert ObligationMS				
* observation.code insert ObligationMS				
* observation.code.code insert ObligationMS				
* observation.code.name insert ObligationMS				
 				
 				
 				
 				
* observation.device.name insert ObligationMS				
 				
 				
 				
 				
 				
 				
* observation.order insert ObligationMS				
* observation.specimen insert ObligationMS				
* observation.performer insert ObligationMS				
* observation.performer.identifier insert ObligationMS				
 				
 				
 				
* observation.performer.organization insert ObligationMS				
 				
 				
* observation.performer.organization.telecom insert ObligationMS				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
 				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
