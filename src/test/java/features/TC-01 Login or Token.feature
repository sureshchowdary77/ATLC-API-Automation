@regression
Feature: LOgin or token generation
  I want to use this template for my feature file

  Background: 

  Scenario: Generate Authentication Token
    Given url 'https://auth.porting.com/connect/token'
    And form field client_id = 'Client.PortControl.Web'
    And form field client_secret = '3AKIx0pz4Lvm4V3dYw7Afg4vw3j9bZ'
    And form field grant_type = 'password'
    And form field password = 'Chowdary@123'
    And form field scope = 'offline_access portcontrol.web.api.tst'
    And form field username = 'sureshkumar@ensarsolutions.com'
    When method POST
    Then status 200
    * def token = response.access_token;
    And print response
