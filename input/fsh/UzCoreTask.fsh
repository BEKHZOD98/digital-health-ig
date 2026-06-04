Profile: UzCoreTask
Parent: Task
Id: uz-core-task
Title: "Uzbekistan Core Task"
Description: "Profile for Task"
* identifier 0..1 MS
* code 0..1 MS
* basedOn 1..1 MS
* partOf 0..* MS
* status 1..1 MS
* businessStatus 0..1 MS
* intent 1..1 MS
* focus 1..1 MS
* for 0..1 MS
* owner 0..1 MS
* requestedPeriod 0..1 MS
* requestedPeriod.start 0..1 MS
* requestedPeriod.end 0..1 MS
* executionPeriod 0..1 MS
* executionPeriod.start 0..1 MS
* executionPeriod.end 0..1 MS 

CodeSystem: TaskCodeCS
Id: task-code-cs
Title: "Task Code CS"
Description: "Category codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #approve-family-doctor "Approve Family Doctor"
* #approve-specialist "Approve Specialist"
* #approve-regional-commission "Approve Regional Commission"
* #approve-national-commission "Approve National Commission"
* #approve-hospitalization "Approve Hospitalization"
* #approve-insurance-fund "Approve Insurance Fund"
ValueSet: TaskCodeVS
Id: task-code-vs
Title: "Task Code VS"
Description: "ValueSet for Task codes"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system TaskCodeCS

CodeSystem: TaskStatusCS
Id: task-status-cs
Title: "Task Status CS"
Description: "Status codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #draft "Draft"
* #requested "Requested"
* #received "Received"
* #accepted "Accepted"
* #rejected "Rejected"
* #ready "Ready"
* #cancelled "Cancelled"
* #in-progress "In progress"
* #on-hold "On hold"
* #failed "Failed"
* #competed "Completed"
* #enterd-in-error "Entered in error"
ValueSet: TaskStatusVS
Id: task-status-vs
Title: "Task Status VS"
Description: "ValueSet fro Task Status codes"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system TaskStatusCS

CodeSystem: TaskBusinessStatusCS
Id: task-business-status-cs
Title: "Task Business Status CS"
Description: "Business status codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #draft "Draft"
* #active "Active"
* #on-hold "On hold"
* #revoked "Revoked"
* #completed "Completed"
* #entered-in-error "Entered in error"
* #in-reeview "In review"
* #confirmed "Confiermed"
* #not-used "Not used"
* #overdue "Overdue"
ValueSet: TaskBusinessStatusVS
Id: task-business-status-vs
Title: "Task Business Status VS"
Description: "Value Set for Task Business Status codes"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system TaskBusinessStatusCS

CodeSystem: TaskIntentCS
Id: task-intent-cs
Title: "Task Intent CS"
Description: "Intent codes for tasks"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* #unknown "Unknown"
* #proposal "Proposal"
* #plan "Plan"
* #order "Order"
* #original-order "Original order"
* #reflex_order "Reflex order"
* #filler-order "Filler order"
* #instance-order "Instance order"
* #option "Option"
ValueSet: TaskIntentVS
Id: task-intent-vs
Title: "Task Intent VS"
Description: "ValueSet for Task Intent VS"
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* include codes from system TaskIntentCS

Instance: example-task
InstanceOf: UzCoreTask
Usage: #example
Title: "Uz Core Task Example"
Description: "Example of a astate insurance task for hospitalization"


* identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/task-identifier"
* identifier[0].value = "TASK-2026-001"
* code = TaskCodeCS#approve-family-doctor "Family doctor approval"
* basedOn[0] = Reference(ServiceRequest/example-service-request)
* status = #in-progress
* businessStatus = #TaskBusinessStatusCS#active "Active"
* intent = #order  
* focus = Reference(ServiceRequest/example-service-request)
* for = Reference(Patient/example-patient)
* owner = Reference(Organization/example-organization)
* requestedPeriod.start = "2026-01-01"
* requestedPeriod.end = "2026-01-02"
* executionPeriod.start = "2026-01-01"
* executionPeriod.end = "2026-01-02"





