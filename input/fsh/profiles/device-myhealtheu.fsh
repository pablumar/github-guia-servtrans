Profile: DeviceMeasuringMyHealthEu
Parent: Device
Id: Device-measuring-lab-myhealtheu
Title: "Device: measuring"
Description: "This profile defines how to represent a measuring Device in HL7 FHIR for the purpose of this guide."

* identifier ^short = "Device identifier"
* udiCarrier ^short = "Unique Device Identifier (UDI)"

// ==> add binding
* manufacturer ^short = "Manufacturer's name"

* deviceName 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
  * ^definition = "Name of the device. Two slices have been defined one for the name given by the manufacture and one for the model name"

* deviceName contains manDeviceName 0..*
* deviceName[manDeviceName]
  * type = #manufacturer-name
  * name ^short = "Manufacturer device name"

* deviceName contains modelName 0..*
* deviceName[modelName]
  * type = #model-name
  * name ^short = "Model name"

* identifier insert ObligationMS
* udiCarrier insert ObligationMS
* deviceName.name insert ObligationMS
* manufacturer insert ObligationMS


Profile: DeviceSpecimenMyHealthEu
Parent: Device
Id: Device-specimen-lab-myhealtheu
Title: "Device: specimen subject"
Description: "This profile defines how to represent a device in HL7 FHIR, when used as specimen subject, for the purpose of this guide."

* type ^short = "The type of device"
* type from EHDSIMedicalDeviceWithExceptions

// missing infos ?

// MS

* type insert ObligationMS
* manufacturer insert ObligationMS
* deviceName.name insert ObligationMS
* udiCarrier insert ObligationMS
* identifier insert ObligationMS
* manufacturer insert ObligationMS
