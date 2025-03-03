// -------------------------------------------------------------------------------				
//  Logical Model				lab-payer.fsh
// -------------------------------------------------------------------------------				
Logical: PayerLabMyHEU				
Id: Payer				
Title: "Health insurance and payment information"				
Description:  """Health insurance and payment information as defined by the MyHealth@EU business requirement '13.01 Create the MyHealth@EU Laboratory Result Report Content'."""				
* insurance 0..1 BackboneElement "Health insurance information" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""				
* insurance.identifier 0..* Identifier "Health insurance code" """Unique health insurance company identification code. """				
* insurance.name 0..* string "Health insurance name" """Full, official name of the healthcare insurance provider. """		 		
* insurance.subjectIdentifier 0..* Identifier "Health insurance number" """Number or code under which the insured person is registered at the insurance provider. """				
//--- END				
//--- END				
//--- END				
