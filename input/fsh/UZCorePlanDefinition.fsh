Profile: UZCorePlanDefinition
Parent: PlanDefinition
Id: uz-core-plan-definition
Title: "UZ Core PlanDefinition"
Description: "Uzbekistan Core profile for representing structured healthcare plans and schedules. It supports the definition of clinical activities, including immunization schedules, screening programs, blood donation schedules, and other healthcare planning workflows. The profile enables consistent planning, implementation, and exchange of PlanDefinition resources within the national digital health ecosystem."
* ^status = #draft
* ^experimental = true

* url 1..1 MS
* url ^short = "Canonical identifier for this PlanDefinition"

* identifier MS
* version MS


* versionAlgorithm[x] MS
* versionAlgorithm[x] from VersionAlgorithmVS (extensible)

* name 1..1 MS
* name ^short = "Machine-processable name for this PlanDefinition"

* insert MultilingualTitle(Plan definition)
* status MS
* status from PublicationStatusVS (required)

* subject[x] MS
* subject[x] only CodeableConcept or Reference
* subjectCodeableConcept MS
* subjectReference MS
* subjectReference only Reference(
    Group or
    MedicinalProductDefinition or
    SubstanceDefinition or
    AdministrableProductDefinition or
    ManufacturedItemDefinition or
    PackagedProductDefinition
)

* date MS
* publisher MS
* description 1..1 MS

// useContext lets clients tell immunization schedules apart from other PlanDefinitions on the
// server. Every UZ Core immunization schedule carries a fixed focus context, so it is found with
// GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002
* useContext 0..* MS
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "value"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Distinguishes healthcare schedules and their categories"

* useContext contains
    immunizationFocus 1..1 MS and
    scheduleCategory 1..1 MS and
    bloodDonationFocus 1..1 MS and
    screeningFocus 1..1 MS

* useContext[immunizationFocus] ^short = "Marks this PlanDefinition as an immunization schedule"
* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].value[x] only CodeableConcept
* useContext[immunizationFocus].valueCodeableConcept.coding 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.system 1..1
* useContext[immunizationFocus].valueCodeableConcept.coding.code 1..1
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002

* useContext[scheduleCategory] ^short = "Kind of immunization schedule"
* useContext[scheduleCategory].code = $usage-context-type#topic
* useContext[scheduleCategory].value[x] only CodeableConcept
* useContext[scheduleCategory].valueCodeableConcept from ImmunizationScheduleTypeVS (extensible)

* useContext[bloodDonationFocus] ^short = "Marks this PlanDefinition as a whole blood donation schedule"
* useContext[bloodDonationFocus].code = $usage-context-type#focus
* useContext[bloodDonationFocus].value[x] only CodeableConcept
* useContext[bloodDonationFocus].valueCodeableConcept.coding 1..1
* useContext[bloodDonationFocus].valueCodeableConcept.coding.system 1..1
* useContext[bloodDonationFocus].valueCodeableConcept.coding.code 1..1
* useContext[bloodDonationFocus].valueCodeableConcept = $sct#25179006

* useContext[screeningFocus] ^short = "Marks this PlanDefinition as a whole screening schedule"
* useContext[screeningFocus].code = $usage-context-type#focus
* useContext[screeningFocus].value[x] only CodeableConcept
* useContext[screeningFocus].valueCodeableConcept.coding 1..1
* useContext[screeningFocus].valueCodeableConcept.coding.system 1..1
* useContext[screeningFocus].valueCodeableConcept.coding.code 1..1
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006


* approvalDate MS
* effectivePeriod MS

* extension contains PlanDefinitionStatusHistory named statusHistory 0..* MS
* extension[statusHistory] ^short = "History of PlanDefinition status changes"

* action MS
* action ^short = "Definition of action included in the plan"

* action.linkId MS
* action.linkId ^short = "Unique id for the action in the PlanDefinition"

* action.title MS
* action.description MS

* action.code MS
* action.code from ActionCodeVS (example)

* action.condition MS
* action.condition.kind MS
* action.condition.kind from ActionConditionVS (required)
* action.condition.expression MS

* action.relatedAction MS
* action.relatedAction.targetId MS
* action.relatedAction.targetId ^short = "Identifier of related action"
* action.relatedAction.targetId ^comment = "targetId should reference an existing action.linkId."
* action.relatedAction.relationship  MS
* action.relatedAction.relationship from ActionRelationshipTypeVS (required)

* action.relatedAction.offset[x] MS
* action.relatedAction.offset[x] only Duration or Range
* action.relatedAction.offsetDuration MS
* action.relatedAction.offsetRange MS

* action.timing[x] MS
* action.timing[x] only Age or Timing
* action.timingAge MS
* action.timingTiming MS

* action.participant MS
* action.participant.actorId MS
* action.participant.type MS
* action.participant.type from ParticipantResourceTypesVS (required)

// definition[x]'s types and canonical targets are inherited from base R5 unchanged;
// restating them as choice-type slices makes the validator reject definitionCanonical
// with a false "allows for the type uri but found type canonical" error
* action.definition[x] MS

Instance: example-uz-core-plan-definition
InstanceOf: UZCorePlanDefinition
Usage: #example

Title: "UZ Core PlanDefinition"

Description: "Example UZ Core PlanDefinition profile demonstrating a structured healthcare plan with actions, timing, participants, and related activities."
* id = "example-uz-core-plan-definition"

* url = "https://terminology.dhp.uz/fhir/core/PlanDefinition/example-uz-core-plan-definition"

// * version = "1.0.0"

* name = "ExamplePlanDefinition"
* title = "Example Vaccination Follow-up Plan"
* status = $publication-status#draft
* date = "2026-08-10"
* publisher = "DHP Uzbekistan"
* description = "Example PlanDefinition demonstrating healthcare planning activities, action relationships, timing, and participants."

* useContext[immunizationFocus].code = $usage-context-type#focus
* useContext[immunizationFocus].valueCodeableConcept = $sct#33879002 "Active immunization"

* useContext[scheduleCategory].code = $usage-context-type#topic
* useContext[scheduleCategory].valueCodeableConcept = ImmunizationScheduleTypeCS#pd-type-0001-00001 "Age-based"

* useContext[screeningFocus].code = $usage-context-type#focus
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006 "Screening"

* useContext[bloodDonationFocus].code = $usage-context-type#focus
* useContext[bloodDonationFocus].valueCodeableConcept = $sct#25179006 "Blood donation"

* approvalDate = "2026-08-01"

* effectivePeriod.start = "2026-08-01"
* effectivePeriod.end = "2027-08-01"

* extension[statusHistory].extension[status].valueCode = #draft
* extension[statusHistory].extension[period].valuePeriod.start = "2026-01-01"
* extension[statusHistory].extension[period].valuePeriod.end = "2026-03-31"
* extension[statusHistory].extension[reason].valueString = "Initial draft."
* extension[statusHistory].extension[changedBy].valueReference = Reference(example-practitioner)



* action[0].id = "action-1"
* action[0].linkId = "action-1"
* action[0].title = "Initial vaccination"
* action[0].description = "Administer first vaccine dose."
* action[0].code = $action-code#recommend-immunization "Recommend an immunization"

* action[0].condition[0].kind = $action-condition-kind#applicability "Applicability"
* action[0].condition[0].expression.description = "Patient must be 18 years or older"
* action[0].condition[0].expression.language = #text/fhirpath
* action[0].condition[0].expression.expression = "Patient.birthDate <= today() - 18 years"

* action[0].participant[0].type = $action-participant-type#practitioner
* action[0].participant[0].actorId = "vaccinator"
* action[0].definitionCanonical = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"


* action[1].id = "action-2"
* action[1].linkId = "action-2"
* action[1].title = "Follow-up vaccination"
* action[1].description = "Administer second vaccine dose."

* action[1].relatedAction[0].targetId = "action-1"
* action[1].relatedAction[0].relationship = $action-relationship-type#after-end
* action[1].relatedAction[0].offsetDuration.value = 30
* action[1].relatedAction[0].offsetDuration.unit = "days"
* action[1].relatedAction[0].offsetDuration.system = "http://unitsofmeasure.org"
* action[1].relatedAction[0].offsetDuration.code = #d

* action[1].participant[0].type = $action-participant-type#practitioner
* action[1].participant[0].actorId = "vaccinator"
* action[1].definitionCanonical = "https://terminology.dhp.uz/fhir/core/ActivityDefinition/example-activity-definition"



