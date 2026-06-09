// Fixed: Added missing alias for $request-status
Alias: $request-status = http://hl7.org/fhir/request-status

ValueSet: ServiceRequestStatusVS
Id: service-request-status-vs
Title: "Service Request Status VS"
Description: "ValueSet for ServiceRequest status codes in Uzbekistan Core profiles"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/service-request-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ServiceRequestStatusCS)
* include codes from system $request-status