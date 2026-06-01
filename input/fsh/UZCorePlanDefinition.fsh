Profile: UZCorePlanDefinition
Parent: PlanDefinition
Id: uz-core-plan-definition
Title: "Uzbekistan Core Plan Definition"
Description: "Profile for Plan Definition"
* url 1..1 MS
* identifier 0..* MS
* version 0..1 MS
* name 1..1 MS
* title 0..1 MS
* status 1..1 MS
* subject[x] 0..1 MS
* date 0..1 MS
* publisher 0..1 MS
* description 0..1 MS
* useContext 0..* MS
* approvalDate 0..1 MS
* effectivePeriod 0..1 MS
* action 0..* MS
* action.linkId 0..1 MS
* action.title 0..1 MS
* action.description 0..1 MS
* action.code 0..1 MS
* action.condition 0..* MS
* action.condition.kind 1..1 MS
* action.condition.expression 0..1 MS
* action.relatedAction 0..* MS
* action.relatedAction.targetId 1..1 MS
* action.relatedAction.relationship 1..1 MS
* action.relatedAction.offset[x] 0..1 MS
* action.relatedAction.offsetDuration 0..1 MS
* action.relatedAction.offsetRange 0..1 MS
* action.timing[x] 0..1 MS
* action.timingAge 0..1 MS
* action.timingTiming 0..1 MS
* action.participant 0..* MS
* action.participant.actorId 0..1 MS
* action.participant.type 0..1 MS
* action.definition[x] 0..1 MS
* action.definitionCanonical 0..1 MS
* action.definitionUri 0..1 MS


CodeSystem: VersionAlgorithmCS
Id: version-algorithm-cs
Title: "Version Algorithm CS"
Description: "description"
* ^status = #active
* ^experimental = true 
* ^publisher = "Uzinfocom"
* #semver "SemVer"
* #integer "Integer"
ValueSet: VersionAlgorithmVS
Id: version-algorithm-vs
Title: "Version Algorithm VS"
Description: "description"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system VersionAlgorithmCS

CodeSystem: PublicationStatusCS
Id: publication-status-cs
Title: "Publication Status CS"
Description: "bla bla bla"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #draft "Draft"
* #active "Active"
* #retired "Retired"
* #unknown "Unknown"
ValueSet: PublicationStatusVS
Id: publication-status-vs
Title: "Publication Status VS"
Description: "bla bla bla"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system PublicationStatusCS

CodeSystem: ActionCodeCS
Id: action-code-cs
Title: "Action Code CS"
Description: "bla bla bla"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #send-message "Send a message"
* #recommend-immunization "Recommend an immunization"
* #collect-information "Collect information"
ValueSet: ActionCodeVS
Id: action-code-vs
Title: "Action Code VS"
Description: "bla bla bla"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ActionCodeCS

CodeSystem: ActionConditionKindCS
Id: action-condition-kind-cs
Title: "Action Condition Kind Code System"
Description: "Codes defining the type of condition for an action"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #applicability "Applicability"
* #start "Start"
* #stop "Stop"
ValueSet: ActionConditionKindVS
Id: action-condition-kind-vs
Title: "Action Condition Kind Code System"
Description: "Codes defining the type of condition for an action"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ActionConditionKindCS

CodeSystem: ActionRelationshipTypeCS
Id: action-relationship-type-cs
Title: "Action Relationship Type Code System"
Description: "Codes defining relationships between actions"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #after "after"
* #after-start "after-start"
* #after-end "after-end"
ValueSet: ActionRelationshipTypeVS
Id: action-relationship-type-vs
Title: "Action Relationship Type Code System"
Description: "Codes defining relationship between actions"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ActionRelationshipTypeCS

CodeSystem: ParticipantResourceTypesCS
Id: participant-resource-types-cs
Title: "Participant Resource Types CS"
Description: "Types of participants in a plan"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #patient "Patient"
* #practitioner "Practitioner"
* #relatedperson "RelatedPerson"
ValueSet: ParticipantResourceTypesVS
Id: participant-resource-types-vs
Title: "Participant Resource Types VS"
Description: "Types of participants in a plan"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system ParticipantResourceTypesCS


Instance: example-plan-definition
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "UZ Core PlanDefinition Example"
Description: "Example of a plan definition for tuberculosis prevention"

* url = "https://fhir.dhp.uz/PlanDefinition/tuberculosis-prevention"
* identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/plan-definition-identifier"
* identifier[0].value = "PLAN-TB-2026-001"
* version = "1.0.0"
* name = "TuberculosisPreventionProtocol"
* title = "Tuberculosis Prevention Protocol"
* status = #active
* date = "2026-01-01"
* publisher = "Uzinfocom"
* description = "Protocol for tuberculosis prevention including BCG vaccination"

* effectivePeriod
  * start = "2026-01-01"
  * end = "2026-12-31"

* goal[0].description.text = "Prevent tuberculosis through BCG vaccination"

* action[0].linkId = "action-1"
* action[0].title = "Assess eligibility"
* action[0].description = "Evaluate patient eligibility for BCG vaccination"
* action[0].code = ActionCodeCS#collect-information "Collect information"
* action[0].condition[0].kind = #applicability
* action[0].participant[0].type = #practitioner

* action[1].linkId = "action-2"
* action[1].title = "Administer BCG vaccine"
* action[1].description = "Administer vaccine to eligible patients"
* action[1].code = ActionCodeCS#recommend-immunization "Recommend an immunization"
* action[1].relatedAction[0].targetId = "action-1"
* action[1].relatedAction[0].relationship = #after
* action[1].participant[0].type = #practitioner

* action[2].linkId = "action-3"
* action[2].title = "Notify patient"
* action[2].description = "Send confirmation message to patient"
* action[2].code = ActionCodeCS#send-message "Send a message"
* action[2].relatedAction[0].targetId = "action-2"
* action[2].relatedAction[0].relationship = #after-end
* action[2].participant[0].type = #patient


