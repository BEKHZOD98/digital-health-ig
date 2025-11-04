ValueSet: ConditionSeverityVS
Id: condition-severity-vs
<<<<<<< HEAD
Title: "Types of Condition severities"
Description: "Types of Condition severities in Uzbekistan"
=======
Title: "Types of severity"
Description: "Types of severity in Uzbekistan"
>>>>>>> add-Medication
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/condition-severity-vs"
* ^experimental = true
* ^language = #en // SNOMED-CT does not yet have Uzbek translations, so we use English for the display values

* include $sct#255604002 "Mild"
<<<<<<< HEAD
* include $sct#6736007 "Moderate severity"
=======
* include $sct#6736007 "Moderate"
>>>>>>> add-Medication
* include $sct#24484000 "Severe"
