@regression
Feature: Retrieving Single telephone number Ownership details

  Background: 
    * url baseURL
    * header Content-Type = 'application/json-patch+json'
    * header Authorization = 'Bearer '+accessToken.token

  Scenario: Retrieving Single telephone number Ownership details
    Given path '/api/number/search'
    And request {"searchExpression": "5274225984"}
    When method Post
    Then status 200
    And print response
