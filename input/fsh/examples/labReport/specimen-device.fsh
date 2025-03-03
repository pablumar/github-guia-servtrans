Instance: Specimen-device-example
InstanceOf: SpecimenMyHealthEu
Title: "Specimen: device subject"
Description: "Specimen: example of device subject"
Usage: #example
* contained = DeviceSpecimenSubject
* status = #available
* type = $sct#119297000	"Blood specimen"
* subject = Reference(DeviceSpecimenSubject)
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: DeviceSpecimenSubject
InstanceOf: DeviceSpecimenMyHealthEu
Usage: #inline
* type = $v3-NullFlavor#UNC
  * text = "blood bag"