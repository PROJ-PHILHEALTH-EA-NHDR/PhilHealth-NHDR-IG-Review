Profile: PH_Patient
Parent: Patient
Id: PH_Patient
* ^url = "https://example.org/fhir/StructureDefinition/PH_Patient"
* ^status = #draft
* . ^short = "Information about an individua ql receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* extension contains
    $patient-nationality named nationality 0..* and
    $patient-religion named religion 0..* and
    IndigeneousGroup named indigeneousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    SpouseName named spouseName 0..* and
    FatherName named fatherName 0..* and
    MotherName named motherName 0..* and
    RecordedDate named recordedDate 0..* and
    Signature named signature 0..* and
    Occupation named occupation 0..* and
    Sex named sex 0..*
* extension[nationality] from $NationalityValueSet (required)
* extension[nationality] ^definition = "Code representing nationality of patient."
* extension[nationality] ^comment = "This is an extension"
* extension[nationality] ^isModifier = false
* extension[nationality] ^binding.description = "Nationality ValueSet"
* extension[nationality].extension[code] from $NationalityValueSet (required)
* extension[nationality].extension[code] ^sliceName = "code"
* extension[religion] ^comment = "This is an extension"
* extension[religion] ^isModifier = false
* extension[indigeneousGroup] from IndigenousGroupValueSet (required)
* extension[indigeneousGroup] ^short = "Indigeneous Group"
* extension[indigeneousGroup] ^definition = "The indigenerous/ethnic group where the person belongs"
* extension[indigeneousGroup] ^comment = "This is an extension"
* extension[indigeneousGroup] ^isModifier = false
* extension[indigeneousGroup] ^binding.description = "IndigenousGroup"
* extension[indigeneousGroup].value[x] from $IndigenousPeopleValueSet (required)
* extension[indigenousPeople] ^short = "Indigenous People"
* extension[indigenousPeople] ^definition = "Identify whether a person belongs to an indigenous/ethnic group"
* extension[indigenousPeople] ^comment = "This is an extension"
* extension[indigenousPeople] ^isModifier = false
* extension[spouseName] ^short = "Name of Spouse"
* extension[spouseName] ^definition = "Name of the spouse"
* extension[spouseName] ^comment = "This is an extension"
* extension[spouseName] ^isModifier = false
* extension[fatherName] ^short = "Name of the Father"
* extension[fatherName] ^definition = "Name of the Father"
* extension[fatherName] ^comment = "This is an extension"
* extension[fatherName] ^isModifier = false
* extension[motherName] ^short = "Name of the Mother"
* extension[motherName] ^definition = "Name of the Mother"
* extension[motherName] ^comment = "This is an extension"
* extension[motherName] ^isModifier = false
* extension[recordedDate] ^short = "Date information was recorded"
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Patient record was created in the system, which is often a system-generated date."
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* extension[signature] ^short = "Signature"
* extension[signature] ^definition = "This pertains to the signature"
* extension[signature] ^comment = "This is an extension"
* extension[signature] ^isModifier = false
* extension[signature].value[x].extension[position] only $originalText
* extension[signature].value[x].extension[position] ^sliceName = "position"
* extension[signature].value[x].extension[position] ^short = "Position of the signee"
* extension[signature].value[x].extension[position] ^definition = "This pertains to the signature of the signee"
* extension[signature].value[x].extension[position] ^comment = "This is an extension"
* extension[signature].value[x].extension[position] ^isModifier = false
* extension[signature].value[x].extension[reason] only $originalText
* extension[signature].value[x].extension[reason] ^sliceName = "reason"
* extension[signature].value[x].extension[reason] ^short = "Reason of the signature"
* extension[signature].value[x].extension[reason] ^definition = "This pertains to the reason of the signature"
* extension[signature].value[x].extension[reason] ^isModifier = false
* extension[occupation] ^isModifier = false
* extension[sex] from SexValueSet (extensible)
* extension[sex] ^short = "Patient's sex"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^isModifier = false
* extension[sex] ^binding.description = "Sex"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "id"
* identifier ^slicing.description = "PhilhealthID"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this patient.\nA numeric or alphanumeric string that is associated with a single object or entity within a given system."
* identifier contains
    philhealthID 1..1 and
    otherID 0..1
* identifier[philhealthID] ^short = "Philhealth Number"
* identifier[philhealthID] ^definition = "PIN - PhilHealth Identification Number"
* identifier[philhealthID].system ..0
* identifier[philhealthID].period ..0
* identifier[otherID] ^short = "Other Identification aside from the Philhealth ID"
* identifier[otherID] ^definition = "TIN, SSS, GSIS, Divers License, Passport no., National ID"
* identifier[otherID] ^comment = "TIN, SSS, GSIS, Divers License, Passport no., National ID"
* identifier[otherID].system ..0
* identifier[otherID].period ..0
* name.id ..0
* name.extension[middleName] only MiddleName
* name.extension[middleName] ^sliceName = "middleName"
* name.extension[middleName] ^isModifier = false
* name.use ..0
* name.prefix ..0
* gender ..0
* deceased[x] ^definition = "Indicates if the individual is deceased or not.\nThe \"\"[x]\"\" is replaced with the title-cased name of the type that is actually used."
* address.extension ^definition = "This pertains to the barangay address"
* address.extension[barangay] only $originalText
* address.extension[barangay] ^sliceName = "barangay"
* address.extension[barangay] ^short = "barangay"
* address.extension[barangay] ^definition = "The barangay is the smallest political unit"
* address.extension[barangay] ^isModifier = false
* address.extension[region] only Region
* address.extension[region] ^sliceName = "region"
* address.extension[region] ^isModifier = false
* address.extension[province] only $originalText
* address.extension[province] ^sliceName = "province"
* address.extension[province] ^isModifier = false
* address.extension[city] only $originalText
* address.extension[city] ^sliceName = "city"
* address.extension[city] ^isModifier = false
* address.extension[zip] only $originalText
* address.extension[zip] ^sliceName = "zip"
* address.extension[zip] ^isModifier = false
* address.extension[pSGC] only PSGC
* address.extension[pSGC] ^sliceName = "pSGC"
* address.extension[pSGC] ^isModifier = false
* address.state ^definition = "Pertains to the provincial subdivision"
* maritalStatus from MaritalStatusValueSet (extensible)
* maritalStatus ^definition = "This field contains a patient's most recent marital (civil) status.\nRefers to the personal status of each individual with reference to the marriage laws or customs of the country.  It is the same as \"\"civil status\"\", the term usually used in official and private records, documents, transactions, and others, in the country. \n\nAlternate Name: Civil Status"
* multipleBirth[x] ..0
* multipleBirth[x] ^slicing.discriminator.type = #type
* multipleBirth[x] ^slicing.discriminator.path = "$this"
* multipleBirth[x] ^slicing.rules = #open
* photo.id ..0
* photo.contentType ..0
* photo.language ..0
* photo.size ..0
* photo.hash ..0
* photo.creation ..0
* contact.relationship from ContactRelationshipValueSet (extensible)
* communication ..0
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"
* managingOrganization ..0