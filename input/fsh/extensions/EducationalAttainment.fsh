Extension: EducationalAttainment
Id: EducationalAttainment
Title: "Educational Attainment"
Context: Patient
Description: "Highest educational attainment of the patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/EducationalAttainment"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $EducationalAttainmentVS (required)