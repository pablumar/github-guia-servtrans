// -------------------------------------------------------------------------------				
//  Logical Model				lab-validator.fsh
// -------------------------------------------------------------------------------				
Logical: ValidatorLabMyHEU				
Id: Validator				
Title: "Result validator"				
Description:  """Result validator. Section A1.7 of the MyHealth@EUguideline."""				
* identifier 0..1 Identifier "Result validator identifier" """The health professional identification number. Either an internal identifier assign by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number."""				
* name 0..* HumanName "Result validator name" """Person name"""				
* organization 0..* BackboneElement "Result validator organization" """(The healthcare provider organization information)"""		 		
* organization.name 0..1 string "Organization Name" """Name of the organization"""				
* organization.address 0..* Address "Organization Address" """Address of the organization """				
* organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
* dateTime 0..1 dateTime "Validation date and time" """Date and time when the document was validated."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
 				
* name insert ObligationMS				
* organization insert ObligationMS				
 				
 				
 				
* dateTime insert ObligationMS				
//--- END				
//--- END				
//--- END				
				
