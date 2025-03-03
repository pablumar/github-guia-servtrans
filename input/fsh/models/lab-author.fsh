// -------------------------------------------------------------------------------				
//  Logical Model				lab-author.fsh
// -------------------------------------------------------------------------------				
Logical: AuthorLabMyHEU				
Id: Author				
Title: "Author"				
Description:  """Author (by whom the Laboratory result report or a subset of its results was authored). Section A1.5 of the MyHealth@EUguideline."""				
* identifier 0..* Identifier "Author identifier" """The health professional or authoring device identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number"""				
* name 0..* HumanName "Author name" """Person or device name. """				
* organization 1..* BackboneElement "Author organization" """(The healthcare provider organization information)"""		 		
* organization.name 1..1 string "Organization Name" """Name of the organization"""				
* organization.address 0..* Address "Organization Address" """Address of the organization """				
* organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
* identifier insert ObligationMS				
* name insert ObligationMS				
* organization insert ObligationMS				
* organization.name insert ObligationMS				
* organization.address insert ObligationMS				
* organization.telecom insert ObligationMS				
//--- END				
//--- END				
//--- END				
//--- END				
