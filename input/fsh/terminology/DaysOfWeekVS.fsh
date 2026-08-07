<<<<<<< HEAD
ValueSet: DaysOfWeekVS
Id: days-of-week-vs
Title: "Days of Week ValueSet"
Description: "A value set defining the days of the week (mon, tue, wed, etc.) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/days-of-week-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DaysOfWeekCS)

// Включаем все коды из стандартной системы
=======
ValueSet: DaysOfWeekVS
Id: days-of-week-vs
Title: "Days of Week ValueSet"
Description: "A value set defining the days of the week (mon, tue, wed, etc.) with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/days-of-week-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(DaysOfWeekCS)

// Включаем все коды из стандартной системы
>>>>>>> a6b4ea34d295a0418616016f0a1b33b3c78c3d42
* include codes from system http://hl7.org/fhir/days-of-week