Profile: UZCoreImmunizationRecommendation
Parent: ImmunizationRecommendation
Id: uz-core-immunization-recommendation
Title: "UZ Core Immunization Recommendation"
Description: "This profile sets the rules for immunization recommendations based on local requirements."

* identifier 0..* MS
* identifier ^short = "Business ID"

* patient 1..1 MS
* patient ^short = "Who is this profile for?"

* date 1..1 MS
* date ^short = "Recommendation creation date"

* authority 0..1 MS
* authority ^short = "Responsible for vaccination protocol"

* recommendation 1..* MS
* recommendation ^short = "Recommendations for vaccination"
* recommendation obeys inv-45

* recommendation.vaccineCode 0..* MS
* recommendation.vaccineCode ^short = "Vaccine or group of vaccines"
* recommendation.vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code (example)

* recommendation.targetDisease 0..* MS
* recommendation.targetDisease ^short = "Disease against which immunization is carried out"
* recommendation.targetDisease from http://hl7.org/fhir/ValueSet/immunization-target-disease (example)

* recommendation.contraindicatedVaccineCode 0..* MS
* recommendation.contraindicatedVaccineCode ^short = "A vaccine that is contraindicated"

* recommendation.forecastStatus 1..1 MS
* recommendation.forecastStatus ^short = "Status of vaccination recommendation"
* recommendation.forecastStatus from http://hl7.org/fhir/ValueSet/immunization-recommendation-status (example)

* recommendation.forecastReason 0..* MS
* recommendation.forecastReason ^short = "Reason for recommendation status"

* recommendation.dateCriterion 0..* MS
* recommendation.dateCriterion ^short = "Dates defining the proposed vaccination"

* recommendation.dateCriterion.code 1..1 MS
* recommendation.dateCriterion.code ^short = "Date type"

* recommendation.dateCriterion.value 1..1 MS
* recommendation.dateCriterion.value ^short = "Recommended date"

* recommendation.description 0..1
* recommendation.description ^short = "Vaccination protocol information"

* recommendation.series 0..1
* recommendation.series ^short = "Name of vaccination series"

* recommendation.doseNumber 0..1 MS
* recommendation.doseNumber ^short = "Recommended dose number in the series"

* recommendation.seriesDoses 0..1
* recommendation.seriesDoses ^short = "Recommended number of doses"

* recommendation.supportingImmunization 0..* MS
* recommendation.supportingImmunization ^short = "Previous vaccinations"
* recommendation.supportingImmunization only Reference(Immunization or ImmunizationEvaluation)

* recommendation.supportingPatientInformation 0..* MS
* recommendation.supportingPatientInformation ^short = "Patient data supporting the recommendation"

Invariant: inv-45
Description: "Either the vaccineCode or targetDisease field must be specified"
Expression: "vaccineCode.exists() or targetDisease.exists()"
Severity: #error