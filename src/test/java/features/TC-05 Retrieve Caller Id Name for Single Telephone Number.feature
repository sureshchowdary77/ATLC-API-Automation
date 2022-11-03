@regression
Feature: Retrieve CNmae of Single telephone number

  Background: 
    * url baseURL
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+accessToken.token
    * header X-PortControl-Tenant = 'Y228'

  Scenario: Retrieving Cname of Single telephone number
    Given path '/api/number/'+telephoneNo+'/cnam'
    When method Get
    Then status 200
    And print response
