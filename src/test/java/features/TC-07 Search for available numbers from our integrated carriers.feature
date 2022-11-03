@regression
Feature: Searches for available numbers from our integrated carriers

  Background: 
    * url baseURL
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer '+accessToken.token
    * header X-PortControl-Tenant = 'Y228'

  Scenario: Searches for available numbers from our integrated carriers
    Given path '/api/number/available'
    And request { "countryCode": "US", "numberType": "Local", "quantity": 4, "consecutive":1, "searchType": "LATA", "searchExpression": "224" }
    When method Post
    Then status 200
    And print response
