// Fixed: Removed invalid insert statement that was causing syntax error
CodeSystem: ServiceRequestStatusCS
Id: service-request-status-cs
Title: "Service Request Status CS"
Description: "ServiceRequest status codes for service requests in Uzbekistan Core profiles"

* #draft 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"
* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активен"
* #on-hold
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vaqtincha to'xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановлен"
* #revoked
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменен"
* #completed
  * ^designation[0].language = #uz          
  * ^designation[=].value = "Bajarilgan"
  * ^designation[+].language = #ru      
  * ^designation[=].value = "Выполнен"
* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "xato bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"
* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестен"
