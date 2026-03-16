Profile: UZCoreComposition
Parent: Composition
Id: uz-core-composition
Title: "UZ Core Composition"
Description: "UZ Core Composition profile, used as a foundation for creating medical documents and digital forms"
* ^status = #active
* ^experimental = true
* ^date = "2026-03-05"
* ^publisher = "Uzinfocom"

* status and type and category and subject and date and author and title and attester and custodian and section MS
* status from CompositionStatusVS (required)
* type from CompositionTypeVS (required)
* category from CompositionCategoryVS (extensible)

* subject 0..* MS
  * ^short = "Who and/or what the medical document or digital form is about."

* author 1..* MS
* author only Reference(UZCorePractitionerRole or UZCorePractitioner or UZCoreOrganization or UZCoreRelatedPerson or UZCorePatient or Device)

* attester
  * mode 1..1 MS
  * mode from CompositionAttModeVS (preferred)
  * party 0..1 MS
<<<<<<< HEAD
  * party only Reference(UZCorePractitionerRole or UZCorePractitioner or UZCoreOrganization or UZCoreRelatedPerson or UZCorePatient)

* custodian 0..1 MS
* custodian only Reference(UZCoreOrganization)
=======
  * party only Reference(PractitionerRole)

* custodian 0..1 MS
* custodian only Reference(Organization)
>>>>>>> 2df0f73 (Created profile UZCoreComposition)

* section
  * title and code and author and text and entry and emptyReason and orderedBy MS
  * text
    * status 1..1 MS
    * status from CompositionNarrativeStatusVS (required)
    * div 1..1 MS
  * orderedBy from CompositionListOrderVS (preferred)
  * emptyReason from CompositionListEmptyReasonVS
<<<<<<< HEAD
  * author only Reference(UZCorePractitionerRole or UZCorePractitioner or UZCoreOrganization or UZCoreRelatedPerson or UZCorePatient)
=======
  * author only Reference(PractitionerRole)
>>>>>>> 2df0f73 (Created profile UZCoreComposition)


Instance: example-medical-composition
InstanceOf: UZCoreComposition
<<<<<<< HEAD
Description: "Example of a medical record composition "
Usage: #example
* language = #uz
* status = #final
* type = composition-type-cs#emdoc-0010-0001 "Tibbiy muassasaga kelganlarni qayd jurnali"
* category = composition-category-cs#Comp-001-0001 "Tibbiy karta"
* date = "2026-03-05T10:00:00+05:00"
* title = "Bemorning elektron tibbiy kartasi"
* subject = Reference(example-patient)
* author = Reference(example-practitionerrole)

* attester
  * mode = $composition-att-mode#professional
  * party = Reference(example-practitionerrole)
=======
Description: "Example of a medical record composition"
Usage: #example
* language = #uz
* status = #final
* type = CompositionTypeCS#emdoc-0010-0001 "Register of persons who visited (presented to) a medical facility"
* category = CompositionCategoryCS#Comp001-0001 "Tibbiy karta"
* date = "2026-03-05T10:00:00+05:00"
* title = "Bemorning elektron tibbiy kartasi"
* subject = Reference(example-patient)
* author = Reference(example-practitionerrole )

* attester
  * mode = $composition-att-mode#professional
  * party = Reference(example-practitionerrole )
>>>>>>> 2df0f73 (Created profile UZCoreComposition)

* section
  * title = "Anamnez"
  * code = http://loinc.org#10164-2 "History of Present illness Narrative"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bemorning umumiy holati qoniqarli, shikoyatlar mavjud emas.</div>"
<<<<<<< HEAD
  * orderedBy = $composition-list-order#event-date
=======
  * orderedBy = $composition-list-order#event-date
>>>>>>> 2df0f73 (Created profile UZCoreComposition)
