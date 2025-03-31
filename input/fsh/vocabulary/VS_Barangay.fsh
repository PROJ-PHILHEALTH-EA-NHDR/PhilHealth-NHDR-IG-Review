ValueSet: BarangayVS
Id: BarangayVS
Title: "Barangay Codes"
Description: "The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/BarangayVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2025-03-20"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Barangay