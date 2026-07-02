CodeSystem: MedicationRequestIntentCS
Id: medicationrequest-intent-cs
Title: "Medication Request Intent"
Description: "Uzbek and Russian translations for the MedicationRequest intent codes."
* insert SupplementCodeSystemDraft(medicationrequest-intent-cs, $medicationrequest-intent, 5.0.0)

* #proposal
  * ^designation[0].language = #uz
  * ^designation[0].value = "Taklif/talab"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Предложение/Требование"

* #plan
  * ^designation[0].language = #uz
  * ^designation[0].value = "Reja"
  * ^designation[1].language = #ru
  * ^designation[1].value = "План"

* #order
  * ^designation[0].language = #uz
  * ^designation[0].value = "Buyurtma"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Заказ"

* #original-order
  * ^designation[0].language = #uz
  * ^designation[0].value = "Asl buyurtma"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Оригинальный заказ"

* #reflex-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рефлексное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Refleks tayinlash"

* #filler-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение исполнителя"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ijrochi tayinlashi"

* #instance-order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Конкретное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniq tayinlash"

* #option
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вариант"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Variant"