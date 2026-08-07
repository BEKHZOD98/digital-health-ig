CodeSystem: ReferenceRangeMeaningCS
Id: reference-range-meaning-cs
Title: "Reference range meaning translations"
Description: "Meaning of reference range, supplemented with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(reference-range-meaning-cs, $reference-meaning, 5.0.0)

* #type
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tur"

* #normal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Normal diapazon"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нормальный диапазон"

* #recommended
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tavsiya etilgan diapazon"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рекомендуемый диапазон"

* #treatment
  * ^designation[0].language = #uz
  * ^designation[=].value = "Davolash diapazoni"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Диапазон лечения"

* #therapeutic
  * ^designation[0].language = #uz
  * ^designation[=].value = "Terapevtik maqsadli daraja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Терапевтически желаемый уровень"

* #pre
  * ^designation[0].language = #uz
  * ^designation[=].value = "Terapiyagacha bo‘lgan maqsadli daraja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Желаемый уровень до начала терапии"

* #post
  * ^designation[0].language = #uz
  * ^designation[=].value = "Terapiyadan keyingi maqsadli daraja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Желаемый уровень после проведения терапии"

* #endocrine
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endokrin"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Эндокринная"

* #pre-puberty
  * ^designation[0].language = #uz
  * ^designation[=].value = "Balog‘atgacha bo‘lgan davr"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Допубертатный период"

* #follicular
  * ^designation[0].language = #uz
  * ^designation[=].value = "Follikulyar bosqich"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фолликулярная стадия"

* #midcycle
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘rtacha sikl"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Средний цикл"

* #luteal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Lyuteinli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лютеиновая"

* #postmenopausal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Postmenopauza"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Постменопауза"