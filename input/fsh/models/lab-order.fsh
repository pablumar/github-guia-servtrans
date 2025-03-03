// -------------------------------------------------------------------------------				
//  Logical Model				lab-order.fsh
// -------------------------------------------------------------------------------				
Logical: OrderLabMyHEU				
Id: Order				
Title: "Order information and reason"				
Description:  """Order information and reason. Sections A2 and A3 of the MyHealth@EUguideline."""				
* orderDetails 0..1 BackboneElement "Order Information" """Laboratory Result Report could respond to multiple test orders"""				
* orderDetails.identifier 0..* Identifier "Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""				
* orderDetails.dateTime 0..* dateTime "Order date and time" """Date and time of the order placement. """		 		
* orderDetails.orderPlacer 0..* BackboneElement "Order Placer" """Order Placer"""				
* orderDetails.orderPlacer.identifier 0..* Identifier "Order placer identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. In case when order placer is not a health professional, e.g. by patients themselves where applicable, appropriate personal identifier should be used."""				
* orderDetails.orderPlacer.name 0..* HumanName "Order placer name" """Person name"""				
* orderDetails.orderPlacer.specialty 0..* BackboneElement "Order placer specialty" """The specialty of the health professional in the healthcare process."""				
* orderDetails.orderPlacer.contacts 0..* ContactPoint "Order placer contact details" """The role the health professional in the healthcare process. This could be for example medical doctor, pharmacist, nursing specialist etc."""				
* orderDetails.orderPlacer.organization 0..* BackboneElement "Order placer organization" """Order placer organization"""				
* orderDetails.orderPlacer.organization.name 0..* string "Organization Name" """Name of the organization"""				
* orderDetails.orderPlacer.organization.address 0..* Address "Organization Address" """Address of the organization """				
* orderDetails.orderPlacer.organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
* reason 0..* BackboneElement "Order reason" """(Laboratory Result Report could respond to multiple reasons)"""				
* reason.code 0..* CodeableConcept "Problem / diagnosis / condition description" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation."""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
 				
* orderDetails.identifier insert ObligationMS				
* orderDetails.dateTime insert ObligationMS				
* orderDetails.orderPlacer insert ObligationMS				
* orderDetails.orderPlacer.identifier insert ObligationMS				
* orderDetails.orderPlacer.name insert ObligationMS				
 				
 				
 				
* orderDetails.orderPlacer.organization.name insert ObligationMS				
 				
 				
* reason insert ObligationMS				
* reason.code insert ObligationMS				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
