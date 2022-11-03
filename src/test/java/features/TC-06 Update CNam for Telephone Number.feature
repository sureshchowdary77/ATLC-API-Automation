@regression
Feature: Update CNmae of Single telephone number

  Background: 
    * url baseURL
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+accessToken.token
    * header X-PortControl-Tenant = 'Y228'

  Scenario: Update Cname of Single telephone number
    Given path '/api/number/'+telephoneNo+'/cnam'
    And request { "firstName": "Wireless", "lastName": "Caller", "businessName": "Test" }
    When method PUT
    Then status 200
    And print response
