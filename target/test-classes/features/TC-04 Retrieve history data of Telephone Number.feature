@regression
Feature: Retrieving history data of Single telephone number

  Background: 
    * url baseURL
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+accessToken.token

  Scenario: Retrieving history data of Single telephone number
    Given path '/api/number/'+telephoneNo+'/history'
    When method Get
    Then status 200
    And print response
