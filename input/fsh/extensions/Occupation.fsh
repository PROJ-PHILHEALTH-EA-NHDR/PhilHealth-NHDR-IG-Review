Extension: Occupation
Id: Occupation
Context: Patient
Title: "Occupation / In Years"
Description: "Patient's occupation."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Occupation"
* insert MetaData
// * value[x] only string or CodeableConcept
// * value[x] from $psoc (required)
* value[x] only integer or CodeableConcept
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $OccupationClassificationVS (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "Occupation Classification"
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"
* valueInteger ^short = "Length in Years"