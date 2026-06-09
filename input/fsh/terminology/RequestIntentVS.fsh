// Fixed: Added missing alias for $request-intent
Alias: $request-intent = http://hl7.org/fhir/request-intent

ValueSet: ServiceIntentVS
Id: service-intent-vs

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestIntentCS)
* include codes from system $request-intent


