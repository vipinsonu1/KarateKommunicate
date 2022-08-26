Feature: NLP cluster Api
  Background:
    * url 'https://kompose-test.kommunicate.io'

  Scenario: test the nlp get api
  * def apiheader = {Authorization:'Basic S29tcG9zZTpOTFA=', Content-Type:'application/json'}
  Given headers apiheader
  When url baseUrl + '/intent/cluster?applicationId=14d4ba62306d657d0c5170928d94a7ce0&agentResponse=true'
  When method get
  Then status 200
  * print response

  Scenario: test the nlp get api 2
  * def req_headers = {Authorization:'Basic S29tcG9zZTpOTFA=',Content-Type:'application/json', Connection: 'Keep-Alive', User-Agent: 'Mozilla/4.0(compatible;IE;GACv7\. 1\. 5192\. 22378)'}

  Given headers req_headers
  And url 'https://kompose-test.kommunicate.io/intent/cluster?applicationId=14d4ba62306d657d0c5170928d94a7ce0&agentResponse=true'
  When method get
  Then status 200
    * print response

  Scenario: Intent cluster with agentResponse is true
    * def apiheader = {Authorization:'Basic S29tcG9zZTpOTFA=',Content-Type:'application/json'}
    * def query_param = {applicationId:'14d4ba62306d657d0c5170928d94a7ce0', agentResponse: 'true'}
    Given headers apiheader
    When path '/intent/cluster'
    And params query_param
    When method get
    Then status 200
    * print response

  Scenario: Intent cluster with agentResponse is false
    * def apiheader = {Authorization:'Basic S29tcG9zZTpOTFA=',Content-Type:'application/json'}
    * def query_param = {applicationId:'14d4ba62306d657d0c5170928d94a7ce0', agentResponse:'false'}
    Given headers apiheader
    When path '/intent/cluster'
    And params query_param
    When method get
    Then status 200
    * print response

  Scenario: Intent cluster without passing header
    * def query_param = {applicationId:'14d4ba62306d657d0c5170928d94a7ce0', agentResponse:'false'}
    Given path '/intent/cluster'
    And params query_param
    When method get
    Then status 401
    * def JsonResponse = response
    * print JsonResponse.description


