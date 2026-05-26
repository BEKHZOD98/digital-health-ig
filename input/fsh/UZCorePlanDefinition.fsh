// ================================================
// UZCorePlanDefinition.fsh
// Generated from Excel: Profile_and_ValueSet_Plan_definition_v1.xlsx
// ================================================

// ---- CodeSystems ----

CodeSystem: VersionAlgorithmCS
Id: version-algorithm-cs
Title: "Version Algorithm Code System"
Description: "Algorithm used to compare versions"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #semver "SemVer" "Semantik versiyalash"
* #integer "Integer" "Butun son"

CodeSystem: PublicationStatusCS
Id: publication-status-cs
Title: "Publication Status Code System"
Description: "Publication status codes for PlanDefinition"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #draft "Draft" "Qoralama"
* #active "Active" "Faol"
* #retired "Retired" "Faoliyatdan chiqarilgan"
* #unknown "Unknown" "Noma'lum"

CodeSystem: ParticipantResourceTypesCS
Id: participant-resource-types-cs
Title: "Participant Resource Types Code System"
Description: "Resource types representing participants in a plan"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #patient "Patient" "Bemor"
* #practitioner "Practitioner" "Tibbiyot xodimi"
* #relatedperson "RelatedPerson" "Qarindosh"

CodeSystem: ActionCodeCS
Id: action-code-cs
Title: "Action Code Code System"
Description: "Codes describing types of actions to be performed"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #send-message "Send a message" "Xabar yuborish"
* #recommend-immunization "Recommend an immunization" "Emlashni tavsiya qilish"
* #collect-information "Collect information" "Ma'lumotlarni yig'ish"

CodeSystem: ActionConditionKindCS
Id: action-condition-kind-cs
Title: "Action Condition Kind Code System"
Description: "Codes defining the type of condition for an action"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #applicability "Applicability" "Qo'llanilish sharti"
* #start "Start" "Boshlanish"
* #stop "Stop" "Tugash"

CodeSystem: ActionRelationshipTypeCS
Id: action-relationship-type-cs
Title: "Action Relationship Type Code System"
Description: "Codes defining temporal relationships between actions"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #after "after" "keyin"
* #after-start "after-start" "boshlanishidan keyin"
* #after-end "after-end" "tugashidan keyin"

// ---- ValueSets ----

ValueSet: VersionAlgorithmVS
Id: version-algorithm-vs
Title: "Version Algorithm ValueSet"
Description: "Algorithm used to compare versions of PlanDefinition"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system VersionAlgorithmCS

ValueSet: PublicationStatusVS
Id: publication-status-vs
Title: "Publication Status ValueSet"
Description: "Status codes for PlanDefinition publication"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system PublicationStatusCS

ValueSet: ParticipantResourceTypesVS
Id: participant-resource-types-vs
Title: "Participant Resource Types ValueSet"
Description: "Types of participants in a plan"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ParticipantResourceTypesCS

ValueSet: ActionCodeVS
Id: action-code-vs
Title: "Action Code ValueSet"
Description: "Codes for actions in a PlanDefinition"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ActionCodeCS

ValueSet: ActionConditionKindVS
Id: action-condition-kind-vs
Title: "Action Condition Kind ValueSet"
Description: "Types of conditions for actions"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ActionConditionKindCS

ValueSet: ActionRelationshipTypeVS
Id: action-relationship-type-vs
Title: "Action Relationship Type ValueSet"
Description: "Types of relationships between actions"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ActionRelationshipTypeCS

// ---- Profile ----

Profile: UZCorePlanDefinition
Parent: PlanDefinition
Id: uz-core-plan-definition
Title: "UZ Core PlanDefinition"
Description: "Uzbekistan Core PlanDefinition profile, used to represent clinical protocols, order sets, and decision support rules"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-02"
* ^publisher = "Uzinfocom"
* url 1..1 MS
* url ^short = "Canonical identifier for this PlanDefinition"
* identifier 0..* MS
* identifier ^short = "Additional identifier for the PlanDefinition"
* version 0..1 MS
* version ^short = "Business version of the plan"
* name 1..1 MS
* name ^short = "Human-friendly name of the PlanDefinition"
* title 0..1 MS
* title ^short = "Subtitle or additional title"
* status 1..1 MS
* status from PublicationStatusVS (required)
* status ^short = "draft | active | retired | unknown"
* subject[x] 0..1 MS
* subject[x] ^short = "Type of subject the plan is focused on"
* date 0..1 MS
* date ^short = "Date of last change"
* publisher 0..1 MS
* publisher ^short = "Name of the publisher"
* description 0..1 MS
* description ^short = "Natural language description of the plan"
* useContext 0..* MS
* useContext ^short = "Context for which the content is intended"
* approvalDate 0..1 MS
* approvalDate ^short = "Date the plan was approved"
* effectivePeriod 0..1 MS
* effectivePeriod ^short = "Period during which the plan is in effect"
* effectivePeriod
  * start and end MS
* goal 0..* MS
* goal ^short = "Goals of the plan"
* goal
  * description 1..1 MS
  * description ^short = "Description of the goal"
* action 0..* MS
* action ^short = "Actions defined in the plan"
* action
  * linkId 0..1 MS
  * linkId ^short = "Unique id for the action"
  * title 0..1 MS
  * title ^short = "Brief title of the action"
  * description 0..1 MS
  * description ^short = "Description of the action"
  * code 0..1 MS
  * code from ActionCodeVS (example)
  * code ^short = "Code describing the type of action"
  * condition 0..* MS
  * condition ^short = "Condition for performing the action"
  * condition
    * kind 1..1 MS
    * kind from ActionConditionKindVS (required)
    * kind ^short = "applicability | start | stop"
    * expression 0..1 MS
    * expression ^short = "Condition expression"
  * relatedAction 0..* MS
  * relatedAction ^short = "Relationship to another action"
  * relatedAction
    * targetId 1..1 MS
    * targetId ^short = "Id of the related action"
    * relationship 1..1 MS
    * relationship from ActionRelationshipTypeVS (required)
    * relationship ^short = "after | after-start | after-end"
    * offset[x] 0..1 MS
    * offset[x] ^short = "Time offset between related actions"
  * timing[x] 0..1 MS
  * timing[x] ^short = "When the action should take place"
  * participant 0..* MS
  * participant ^short = "Who participates in the action"
  * participant
    * actorId 0..1 MS
    * actorId ^short = "Which actor participates"
    * type 0..1 MS
    * type from ParticipantResourceTypesVS (required)
    * type ^short = "patient | practitioner | practitionerrole | relatedperson"
  * definition[x] 0..1 MS
  * definition[x] ^short = "Description of the action to be performed"

// ---- Example Instance ----

Instance: example-plan-definition
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "UZ Core PlanDefinition Example"
Description: "Example of a vaccination recommendation plan for tuberculosis prevention"
* language = #uz
* url = "https://fhir.dhp.uz/PlanDefinition/tuberculosis-prevention"
* identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/plan-definition-identifier"
* identifier[0].value = "PLAN-TB-2026-001"
* version = "1.0.0"
* name = "TuberculosisPreventionProtocol"
* title = "Tuberculosis Prevention Protocol"
* status = #active
* date = "2026-01-01"
* publisher = "Uzinfocom"
* description = "Clinical protocol for tuberculosis prevention including BCG vaccination in Uzbekistan"
* effectivePeriod
  * start = "2026-01-01"
  * end = "2026-12-31"
* goal[0].description.text = "Prevent tuberculosis through BCG vaccination"
* action[0].linkId = "action-1"
* action[0].title = "Assess eligibility for BCG vaccination"
* action[0].description = "Evaluate patient history and eligibility criteria"
* action[0].code = ActionCodeCS#collect-information "Collect information"
* action[0].condition[0].kind = #applicability
* action[0].participant[0].type = #practitioner
* action[1].linkId = "action-2"
* action[1].title = "Administer BCG vaccine"
* action[1].description = "Administer Bacillus Calmette-Guerin vaccine to eligible patients"
* action[1].code = ActionCodeCS#recommend-immunization "Recommend an immunization"
* action[1].relatedAction[0].targetId = "action-1"
* action[1].relatedAction[0].relationship = #after
* action[1].participant[0].type = #practitioner
* action[2].linkId = "action-3"
* action[2].title = "Notify patient"
* action[2].description = "Send vaccination confirmation message to patient"
* action[2].code = ActionCodeCS#send-message "Send a message"
* action[2].relatedAction[0].targetId = "action-2"
* action[2].relatedAction[0].relationship = #after-end
* action[2].participant[0].type = #patient