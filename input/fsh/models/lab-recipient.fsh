// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient.fsh
// -------------------------------------------------------------------------------				
Logical: RecipientLabMyHEU				
Id: Recipient				
Title: "A.1.4 - Information recipient"				
Description:  """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable.
Section A1.4 of the MyHealth@EUguideline."""				
* identifier 0..* Identifier "Recipient identifier" """The health professional identification number.
Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.
In case when recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""				
* name 0..* HumanName "Recipient name" """Person name.
Either Recipient name or the Organization name should be provided."""				
* organization 0..* BackboneElement "Recipient organization" """The healthcare provider organization information."""		 		
* organization.name 0..1 string "Organization Name" """Name of the organization"""				
* organization.address 0..* Address "Organization Address" """Address of the organization """				
* organization.telecom 0..* ContactPoint "Organization telecom" """Telecom of the organization"""				
* address 0..* Address "Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g., street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose. - Preferred system(s): """				
* country 0..* CodeableConcept "Country" """Country of the recipient. - Preferred system(s): ISO 3166"""				
* telecom 0..* ContactPoint "Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided. - Preferred system(s): """				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
* identifier insert ObligationMS				
 				
 				
 				
 				
 				
 				
* country insert ObligationMS				
* telecom insert ObligationMS				
//--- END				
//--- END				
//--- END				
//--- END				
