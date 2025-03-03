// -------------------------------------------------------------------------------				
//  Logical Model				lab-subject.fsh
// -------------------------------------------------------------------------------				
Logical: SubjectLabMyHEU				
Id: Subject				
Title: "Patient/subject"				
Description:  """Identification of the patient/subject  and Patient/subject related contact information as defined by the MyHealth@EU business requirement '13.01 Create the MyHealth@EU Laboratory Result Report Content'."""				
* identification 1..1 BackboneElement "Identification of the patient/subject" """Identification of the patient/subject"""				
* identification.familyName 1..* string "Family name/surname" """The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."""				
* identification.givenName 1..* string "Given name" """The given name/first name of the patient (also known as forename or first name). This field can contain more than one element. """		 		
* identification.dateOfBirth 1..1 dateTime "Date of birth" """The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided. - Preferred system(s): Complete date, without time, following the ISO 8601 """				
* identification.identifier 0..* Identifier "Personal identifier" """An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) for Czech patient. Multiple identifiers could be provided. """				
* identification.gender 0..1 CodeableConcept "Gender" """This field must contain a recognised valid value for 'administrative gender'. 
If different, 'physiological gender' should be communicated elsewhere
Preferred system(s): - Preferred system(s): HL7 Administrative Gender """				
* identification.sex 0..1 CodeableConcept "Sex for clinical use" """Sex for clinical use"""				
* addressTelecom 0..* BackboneElement "Patient/subject related contact information" """Patient/subject related contact information"""				
* addressTelecom.address 0..* Address "Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose. - Preferred system(s):  ISO 3166"""				
* addressTelecom.address.street 0..1 string "Street" """The street where the patient has his/her domicile. Example: Oxford"""				
* addressTelecom.address.houseNumber 0..1 string "House Number" """The house number of the patient"""				
* addressTelecom.address.postBox 0..1 string "Post Box" """Letter box for the patient"""				
* addressTelecom.address.postalCode 0..1 string "Postal Code" """The postal code where the patient has his/her domicile.
Example: W1W 8LG"""				
* addressTelecom.address.stateOrProvince 0..1 string "State or Province" """The state or province where the patient has his/her domicile.
Example: London"""				
* addressTelecom.address.city 0..1 string "City" """The city where the patient has his/her domicile.
Example: London"""				
* addressTelecom.address.countryCode 1..1 CodeableConcept "Country Code" """The country where the patient has his/her domicile (Country of affiliation).
Example: UK"""				
* addressTelecom.address.use 0..1 code "Use of Address" """home | work | temp | old | billing - purpose of this address"""				
* addressTelecom.address.type 0..1 code "Type of address" """postal | physical | both"""				
* addressTelecom.telecom 0..* ContactPoint "Telecom" """Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided. - Preferred system(s): """				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
// --------------------------------------------------------------				
//  MS				
// --------------------------------------------------------------				
				
* identification insert ObligationMS				
* identification.familyName insert ObligationMS				
* identification.givenName insert ObligationMS				
* identification.dateOfBirth insert ObligationMS				
* identification.identifier insert ObligationMS				
* identification.gender insert ObligationMS				
 				
 				
 				
 				
 				
 				
 				
 				
 				
* addressTelecom.address.countryCode insert ObligationMS				
 				
 				
 				
//--- END				
//--- END				
//--- END				
//--- END				
 				
