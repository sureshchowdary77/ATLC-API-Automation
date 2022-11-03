@regression
Feature: Retrieving detailed info of Single telephone number

  Background: 
    * url baseURL
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+accessToken.token

  Scenario: Retrieving detailed info of Single telephone number
    Given path '/api/number/'+telephoneNo
    When method Get
    Then status 200
    And print response
