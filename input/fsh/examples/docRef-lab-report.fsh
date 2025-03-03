
Instance: SimpleChemistryResultDocRef
InstanceOf: DocumentReferenceMyHealthEu
Title: "DocumentReference: example"
Description: """Example of DocumentReference assoicated to the SimpleChemistryResultReport Laboratory Report (Bundle) example"""
Usage: #example

* masterIdentifier
  * system = "http://example.org"
  * value = "ba91c64b-f30c-4137-a484-34bbba5e8804"

* identifier.system = "urn:oid:2.16.840.1.113883.2.9.2.120.4.4"
* identifier.value = "c030702.TSTSMN63A01F205H.20220325112426.TSS1Tkju"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* status = #current
* date = "2022-03-30T11:24:26+01:00"
* category = $loinc#18719-5 "Chemistry studies (set)"
* type = http://loinc.org#11502-2 "Laboratory report"
* description = "Laboratorní zpráva"
* content[+] 
  * attachment
    * url = "http://sandbox.hl7europe.eu:8080/fhir/Bundle/SimpleChemistryResultReport"
    * contentType = #application/fhir+json
    * language = #cs
* content[+] 
  * attachment
    * url = "http.example.org/pdf/SimpleChemistryResultReport.pdf"
    * contentType = #application/pdf
    * language = #cs
 