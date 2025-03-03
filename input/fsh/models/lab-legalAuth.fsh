// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth.fsh
// -------------------------------------------------------------------------------				
Logical: LegalAuthenticatorLabMyHEU				
Id: LegalAuthenticator				
Title: "Legal authenticator"				
Description:  """Legal authenticator (The person taking responsibility for the medical content of the document).
Section A1.6 of the MyHealth@EUguideline."""				
* identifier 0..1 Identifier "Legal authenticator identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number."""				
* name 0..* HumanName "Legal authenticator name" """Person name"""				
* organization 0..* BackboneElement "Legal authenticator organization" """(The healthcare provider organization information)"""		 		
* organization.name 0..1 string "Organization Name" """Name of the organization"""				
* organization.address 0..* Address "Organization Address" """Address of the organization """				
* organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
* dateTime 0..1 dateTime "Authentication date and time" """Date and time when the document was authorized."""				
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
* dateTime insert ObligationMS				
//--- END				
//--- END				
//--- END				
