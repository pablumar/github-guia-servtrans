// -------------------------------------------------------------------------------					
//  Concept Model. File: 					result-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: result2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "LabRptResult2FHIR"					
* title = "MyHealth@EUResult to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUResult Model to this guide Map"					
* purpose = "It shows how the Result data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Result"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Bundle-lab-myhealtheu"					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Result"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Observation-resultslab-lab-myhealtheu"					
					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "Observation details"					
* group[=].element[=].target.code = #Observation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.dateTime					
* group[=].element[=].display = "Observation date"					
* group[=].element[=].target.code = #Observation.effective[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "intended as the clinical relevant time (i.e. when the specimen was collected)"					
* group[=].element[+].code = #Result.observation.dateTime					
* group[=].element[=].display = "Observation date"					
* group[=].element[=].target.code = #Observation.issued					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "as the date the result is made available."					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "Observation code"					
* group[=].element[=].target.code = #Observation.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "Observation code"					
* group[=].element[=].target.code = #Observation.hasMember.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.code					
* group[=].element[=].display = "Observation code"					
* group[=].element[=].target.code = #Observation.component.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.code.code					
* group[=].element[=].display = "Observation code"					
* group[=].element[=].target.code = #Observation.code.coding.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The mapping refers to the case 'code' mapped to Observation.code."					
* group[=].element[+].code = #Result.observation.code.name					
* group[=].element[=].display = "Observation name"					
* group[=].element[=].target.code = #Observation.code.coding.display					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The mapping refers to the case 'code' mapped to Observation.code. A similar mapping applies to the other cases. This element typically represents the 'full specified name' designation, compared to the 'short name' of the 'Observation display name' element. It is not expected that both designations are recorded in the report; consumers can use in fact terminology services and/or lookup tables to allow users to have different displays for the same coded concept."					
* group[=].element[+].code = #Result.observation.code.originalName					
* group[=].element[=].display = "Observation original name"					
* group[=].element[=].target.code = #Observation.code.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The mapping refers to the case 'code' mapped to Observation.code. A similar mapping applies to the other cases."					
* group[=].element[+].code = #Result.observation.code.displayName					
* group[=].element[=].display = "Observation display name"					
* group[=].element[=].target.code = #Observation.code.coding.display					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "The mapping refers to the case 'code' mapped to Observation.code. A similar mapping applies to the other cases. This element typically represents the' short name' designation, compared to the 'full specified name' of the 'Observation name' element. It is not expected that both designations are recorded in the report; consumers can use in fact terminology services and/or lookup tables to allow users to have different displays for the same coded concept."					
* group[=].element[+].code = #Result.observation.method					
* group[=].element[=].display = "Observation method"					
* group[=].element[=].target.code = #Observation.method					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "Observation device"					
* group[=].element[=].target.code = #Observation.device					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "When it refers to the measuring device, including kits, and device of type Device. See details in the Device group below."					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "Observation device"					
* group[=].element[=].target.code = #Observation.device.device					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "When it refers to the measuring device and device of type DeviceMeasure
See details in the Device group below."					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "Observation device"					
* group[=].element[=].target.code = #Observation.device					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "With device of type DeviceMeasure.
Thsi resource can be used to capture some information about the setting (including calibration)"					
* group[=].element[+].code = #Result.observation.device.labKit					
* group[=].element[=].display = "Laboratory Kit Information"					
* group[=].element[=].target.code = #Observation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TO BE MAPPED"					
* group[=].element[+].code = #Result.observation.referenceMaterial					
* group[=].element[=].display = "Certified Reference Material"					
* group[=].element[=].target.code = #Observation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TO BE MAPPED"					
* group[=].element[+].code = #Result.observation.order					
* group[=].element[=].display = "Order"					
* group[=].element[=].target.code = #Observation.basedOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.specimen					
* group[=].element[=].display = "Specimen"					
* group[=].element[=].target.code = #Observation.specimen					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer					
* group[=].element[=].display = "Performer"					
* group[=].element[=].target.code = #Observation.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "performer can be a Practitionaer a PractitionerRole or an Organization. In this mapping the PractitionerRole case is considered, but others can be applied."					
* group[=].element[+].code = #Result.observation.performer.identifier					
* group[=].element[=].display = "Performer identifier"					
* group[=].element[=].target.code = #Observation.performer.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.name					
* group[=].element[=].display = "Performer Name"					
* group[=].element[=].target.code = #Observation.performer.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.telecom					
* group[=].element[=].display = "Performer telecom"					
* group[=].element[=].target.code = #Observation.performer.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.role					
* group[=].element[=].display = "Performer Role"					
* group[=].element[=].target.code = #Observation.performer.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.organization					
* group[=].element[=].display = "Performer Organization"					
* group[=].element[=].target.code = #Observation.performer.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #Observation.performer.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #Observation.performer.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.performer.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #Observation.performer.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.reporter					
* group[=].element[=].display = "Reporter"					
* group[=].element[=].target.code = #Observation.performer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "For interpreter: performer.extension:performerFunction = AUT (author)
If the person responsible for validation:  performer.extension:performerFunction = AUTHEN or LA"					
* group[=].element[+].code = #Result.observation.reporter.name					
* group[=].element[=].display = "Reporter Name"					
* group[=].element[=].target.code = #Observation.performer.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "performer.resolve.ofType(PractitionerRole)"					
* group[=].element[+].code = #Result.observation.reporter.telecom					
* group[=].element[=].display = "Reporter telecom"					
* group[=].element[=].target.code = #Observation.performer.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.observation.reporter.role					
* group[=].element[=].display = "Reporter Role"					
* group[=].element[=].target.code = #Observation.performer.code					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.observation.reporter.organization					
* group[=].element[=].display = "Reporter Organization"					
* group[=].element[=].target.code = #Observation.performer.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "performer.resolve.ofType(PractitionerRole)"					
* group[=].element[+].code = #Result.observation.reporter.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #Observation.performer.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "performer.resolve.ofType(PractitionerRole)"					
* group[=].element[+].code = #Result.observation.reporter.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #Observation.performer.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "performer.resolve.ofType(PractitionerRole)"					
* group[=].element[+].code = #Result.observation.reporter.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #Observation.performer.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "performer.resolve.ofType(PractitionerRole)"					
* group[=].element[+].code = #Result.observation.result					
* group[=].element[=].display = "Observation result"					
* group[=].element[=].target.code = #Observation.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.result					
* group[=].element[=].display = "Observation result"					
* group[=].element[=].target.code = #Observation.component.value[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.result.text					
* group[=].element[=].display = "Textual Result"					
* group[=].element[=].target.code = #Observation.valueString					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "This map refers to the value[x] case, other options follow the same pattern."					
* group[=].element[+].code = #Result.observation.result.text					
* group[=].element[=].display = "Textual Result"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "This map refers to the value[x] case, other options follow the same pattern."					
* group[=].element[+].code = #Result.observation.result.numeric					
* group[=].element[=].display = "Numeric Result"					
* group[=].element[=].target.code = #Observation.valueQuantity					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Depending on the type of result it could be a Ratio, a Range,..
This map refers to the value[x] case, other options follow the same pattern."					
* group[=].element[+].code = #Result.observation.result.coded					
* group[=].element[=].display = "Coded Result"					
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "This map refers to the value[x] case, other options follow the same pattern."					
* group[=].element[+].code = #Result.observation.interpretation					
* group[=].element[=].display = "Observation interpretation"					
* group[=].element[=].target.code = #Observation.interpretation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.interpretation					
* group[=].element[=].display = "Observation interpretation"					
* group[=].element[=].target.code = #Observation.component.interpretation					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.interpretation.code					
* group[=].element[=].display = "Result interpretation code"					
* group[=].element[=].target.code = #Observation.interpretation.coding					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "This map refers to the interpretation case, other options follow the same pattern."					
* group[=].element[+].code = #Result.observation.interpretation.referenceRange					
* group[=].element[=].display = "Standard reference range"					
* group[=].element[=].target.code = #Observation.referenceRange					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.interpretation.referenceRange					
* group[=].element[=].display = "Standard reference range"					
* group[=].element[=].target.code = #Observation.component.referenceRange					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "depends on the type of test"					
* group[=].element[+].code = #Result.observation.description					
* group[=].element[=].display = "Result description"					
* group[=].element[=].target.code = #Observation.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked"					
* group[=].element[+].code = #Result.observation.accreditationStatus					
* group[=].element[=].display = "Accreditation status"					
* group[=].element[=].target.code = #Observation.performer.qualification					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "performer ofType PractitionerRole"					
* group[=].element[+].code = #Result.observation.accreditationStatus					
* group[=].element[=].display = "Accreditation status"					
* group[=].element[=].target.code = #Observation.performer.organization.qualification					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "performer ofType Organization"					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Result"					
* group[=].target = "DeviceMeasuringMyHealthEu"					
					
* group[=].element[+].code = #Result.observation.device					
* group[=].element[=].display = "Observation device"					
* group[=].element[=].target.code = #Device					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.observation.device.name					
* group[=].element[=].display = "Device Name"					
* group[=].element[=].target.code = #Device.deviceName.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "with deviceName.type = 'manufacturer-name'"					
* group[=].element[+].code = #Result.observation.device.modelName					
* group[=].element[=].display = "Model Name"					
* group[=].element[=].target.code = #Device.deviceName.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "with deviceName.type = 'model-name'."					
* group[=].element[+].code = #Result.observation.device.identifier					
* group[=].element[=].display = "Device Identifier"					
* group[=].element[=].target.code = #Device.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.device.identifier					
* group[=].element[=].display = "Device Identifier"					
* group[=].element[=].target.code = #Device.udiCarrier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.device.type					
* group[=].element[=].display = "Device Type"					
* group[=].element[=].target.code = #Device.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Result.observation.device.manufacturer					
* group[=].element[=].display = "Manufacturer"					
* group[=].element[=].target.code = #Device.manufacturer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Result"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/DiagnosticReport-lab-myhealtheu"					
					
* group[=].element[+].code = #Result.narrative					
* group[=].element[=].display = "Laboratory report narrative"					
* group[=].element[=].target.code = #DiagnosticReport					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "Narrative report"					
* group[=].element[=].target.code = #DiagnosticReport.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "Comments, interpretation and recommendations"					
* group[=].element[=].target.code = #DiagnosticReport.conclusion					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if related to the overall report conclusions"					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "Observation details"					
* group[=].element[=].target.code = #DiagnosticReport.result					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see details in the Observation group"					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Result"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Composition-lab-myhealtheu"					
					
* group[=].element[+].code = #Result.narrative					
* group[=].element[=].display = "Laboratory report narrative"					
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "Narrative report"					
* group[=].element[=].target.code = #Composition.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "Narrative report"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if single section"					
* group[=].element[+].code = #Result.narrative.report					
* group[=].element[=].display = "Narrative report"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if multiple sections"					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "Comments, interpretation and recommendations"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if single section"					
* group[=].element[+].code = #Result.narrative.notes					
* group[=].element[=].display = "Comments, interpretation and recommendations"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.text					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if multiple sections"					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "Observation details"					
* group[=].element[=].target.code = #Composition.section:lab-no-subsections.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if single section. see details in the Observation group"					
* group[=].element[+].code = #Result.observation					
* group[=].element[=].display = "Observation details"					
* group[=].element[=].target.code = #Composition.section:lab-subsections.section.entry					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if multiple sections. see details in the Observation group"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
