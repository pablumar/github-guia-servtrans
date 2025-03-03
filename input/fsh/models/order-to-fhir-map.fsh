// -------------------------------------------------------------------------------					
//  Concept Model. File: 					order-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: order2FHIR-lab-myhealtheu					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "add url here"					
* name = "Order2Fhir"					
* title = "MyHealth@EUOrder to this guide Map"					
* status = #draft					
* experimental = true					
* description = "MyHealth@EUOrder to this guide Map"					
* purpose = "It shows how the Order data set defined by the EU MyHealth@EUguidelines is mapped into this guide"					
* sourceUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Order"					
* targetUri = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/ServiceRequest-lab-myhealtheu"					
					
* group[+].source = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/Order"					
* group[=].target = "http://fhir.ehdsi.eu/laboratory/StructureDefinition/ServiceRequest-lab-myhealtheu"					
					
* group[=].element[+].code = #Order.orderDetails					
* group[=].element[=].display = "Order Information"					
* group[=].element[=].target.code = #ServiceRequest					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.orderDetails.identifier					
* group[=].element[=].display = "Order Id"					
* group[=].element[=].target.code = #ServiceRequest.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.orderDetails.identifier					
* group[=].element[=].display = "Order Id"					
* group[=].element[=].target.code = #ServiceRequest.requisition					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if the Composite Request ID."					
* group[=].element[+].code = #Order.orderDetails.dateTime					
* group[=].element[=].display = "Order date and time"					
* group[=].element[=].target.code = #ServiceRequest.authoredOn					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Order.orderDetails.orderPlacer					
* group[=].element[=].display = "Order Placer"					
* group[=].element[=].target.code = #ServiceRequest.requester					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.identifier					
* group[=].element[=].display = "Order placer identifier"					
* group[=].element[=].target.code = #ServiceRequest.requester.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if the Composite Request ID."					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.name					
* group[=].element[=].display = "Order placer name"					
* group[=].element[=].target.code = #ServiceRequest.requester.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(Practitioner).name"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.name					
* group[=].element[=].display = "Order placer name"					
* group[=].element[=].target.code = #ServiceRequest.requester.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).practitioner.resolve().name"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.specialty					
* group[=].element[=].display = "Order placer specialty"					
* group[=].element[=].target.code = #ServiceRequest.requester.practitioner.specialty					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).specialty"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.contacts					
* group[=].element[=].display = "Order placer contact details"					
* group[=].element[=].target.code = #ServiceRequest.requester.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(Practitioner).telecom"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.contacts					
* group[=].element[=].display = "Order placer contact details"					
* group[=].element[=].target.code = #ServiceRequest.requester.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(Practitioner).address"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.contacts					
* group[=].element[=].display = "Order placer contact details"					
* group[=].element[=].target.code = #ServiceRequest.requester.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).telecom"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.organization					
* group[=].element[=].display = "Order placer organization"					
* group[=].element[=].target.code = #ServiceRequest.requester.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.organization.name					
* group[=].element[=].display = "Organization Name"					
* group[=].element[=].target.code = #ServiceRequest.requester.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.organization.address					
* group[=].element[=].display = "Organization Address"					
* group[=].element[=].target.code = #ServiceRequest.requester.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Order.orderDetails.orderPlacer.organization.telecom					
* group[=].element[=].display = "Organization telecom"					
* group[=].element[=].target.code = #ServiceRequest.requester.organization.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "requester.resolve().ofType(PractitionerRole).organization.resolve()"					
* group[=].element[+].code = #Order.reason					
* group[=].element[=].display = "Order reason"					
* group[=].element[=].target.code = #ServiceRequest.reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.reason					
* group[=].element[=].display = "Order reason"					
* group[=].element[=].target.code = #ServiceRequest.reasonReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Order.reason.code					
* group[=].element[=].display = "Problem / diagnosis / condition description"					
* group[=].element[=].target.code = #ServiceRequest.reasonCode					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
