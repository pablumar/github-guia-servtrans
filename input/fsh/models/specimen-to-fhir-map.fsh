// -------------------------------------------------------------------------------					
//  Concept Model. File: 					specimen-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: specimen2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "Specimen2Fhir"					
* title = "MyHealth@EUSpecimen to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUSpecimen Model to this guide Map"					
* purpose = "It shows how the Specimen data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/SpecimenLab"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Specimen-lab-myhealtheu"					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/SpecimenLab"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Specimen-lab-myhealtheu"					
					
* group[=].element[+].code = #SpecimenLab.identifier					
* group[=].element[=].display = "Specimen identifier"					
* group[=].element[=].target.code = #Specimen.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.speciesType					
* group[=].element[=].display = "Type of species"					
* group[=].element[=].target.code = #Specimen.subject.extension:patient-animal.extension:species					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "subject.ofType(Patient)"					
* group[=].element[+].code = #SpecimenLab.material					
* group[=].element[=].display = "Material"					
* group[=].element[=].target.code = #Specimen.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.collected					
* group[=].element[=].display = "Collection period"					
* group[=].element[=].target.code = #Specimen.collection.collected[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "Anatomic location"					
* group[=].element[=].target.code = #Specimen.collection.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "Anatomic location"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.location					
* group[=].element[=].display = "Body location"					
* group[=].element[=].target.code = #Specimen.collection.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.location					
* group[=].element[=].display = "Body location"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.laterality					
* group[=].element[=].display = "Laterality"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.qualifier					
* group[=].element[=].display = "Specimen site qualifier"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.morphology					
* group[=].element[=].display = "Morphology"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.sourceDevice					
* group[=].element[=].display = "Source Device"					
* group[=].element[=].target.code = #Specimen.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated. In this case the subject is of type Device
If the device is meant instead as the mean used to collect the specimen (e.g blood collected from the catheter), then, this is represented by the collectionMethod attribute and mapped into the Specimen.collection.method"					
* group[=].element[+].code = #SpecimenLab.sourceDevice.type					
* group[=].element[=].display = "Type of device"					
* group[=].element[=].target.code = #Specimen.subject.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated."					
* group[=].element[+].code = #SpecimenLab.sourceDevice.name					
* group[=].element[=].display = "Device Name"					
* group[=].element[=].target.code = #Specimen.subject.manufacturer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated."					
* group[=].element[+].code = #SpecimenLab.sourceDevice.modelName					
* group[=].element[=].display = "Model Name"					
* group[=].element[=].target.code = #Specimen.subject.deviceName.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated."					
* group[=].element[+].code = #SpecimenLab.sourceDevice.identifier					
* group[=].element[=].display = "Device Identifier"					
* group[=].element[=].target.code = #Specimen.subject.udiCarrier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated."					
* group[=].element[+].code = #SpecimenLab.sourceDevice.identifier					
* group[=].element[=].display = "Device Identifier"					
* group[=].element[=].target.code = #Specimen.subject.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated."					
* group[=].element[+].code = #SpecimenLab.sourceDevice.manufacturer					
* group[=].element[=].display = "Manufacturer"					
* group[=].element[=].target.code = #Specimen.subject.manufacturer					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated."					
* group[=].element[+].code = #SpecimenLab.collectionMethod					
* group[=].element[=].display = "Collection procedure/method"					
* group[=].element[=].target.code = #Specimen.collection.method					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.receivedDateTime					
* group[=].element[=].display = "Received date"					
* group[=].element[=].target.code = #Specimen.receivedTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/SpecimenLab"					
* group[=].target = "BodyStructureMyHealthEu"					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "Anatomic location"					
* group[=].element[=].target.code = #BodyStructure.					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.location					
* group[=].element[=].display = "Body location"					
* group[=].element[=].target.code = #BodyStructure.location					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.laterality					
* group[=].element[=].display = "Laterality"					
* group[=].element[=].target.code = #BodyStructure.extension:laterality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation.qualifier					
* group[=].element[=].display = "Specimen site qualifier"					
* group[=].element[=].target.code = #BodyStructure.locationQualifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.morphology					
* group[=].element[=].display = "Morphology"					
* group[=].element[=].target.code = #BodyStructure.morphology					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
