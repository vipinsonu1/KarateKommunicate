Feature: Contaxt api

  Scenario Outline: Contaxt api  passing with body data with call get api and verify the bot id

* def requestpayload =
"""
    {
    "name": <name>,
    "botKey": <botKey>
    }
    """
    * def apiheader = {Authorization:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjo4MzY3NCwiYXBwbGljYXRpb25JZCI6IjMzNDYxY2IyMzE4NTFkMjc5NGUyMGQ0NTExNWIwZWY4MCIsImVtYWlsIjoidmlwaW4remVuZGVzazE1MDIyMDIyQGtvbW11bmljYXRlLmlvIiwicGFzc3dvcmQiOiIkMmIkMTAkZXpiSzJBWjRucTdxUU5LMzd3T2NlZXc0NWtmc1hUSWxVZ3NLUTFPM1U5LlZDdVFNZDhFeE8iLCJ1c2VyTmFtZSI6InZpcGluK3plbmRlc2sxNTAyMjAyMkBrb21tdW5pY2F0ZS5pbyIsInR5cGUiOjMsImdlbmVyYXRlZEF0IjoxNjYxMjUzMTY5OTU2LCJlbmNyeXB0ZWQiOmZhbHNlfSwiaWF0IjoxNjYxMjUzMTY5LCJleHAiOjE2NjM4NDUxNjl9.yMBPhKt6lHiOSOFclZfEjRf4yHUpP8nsMawZ_R0GjOQ',Content-Type:'application/json'}
    * def query_param = {botKey:<botKey>}
   Given url baseUrlApi + '/rest/ws/kompose/context'
   And request requestpayload
   And headers apiheader
   When method post
   Then status 201
    * print 'response------1', response
    * def result = response
    * print result
    * print result.data._id


    Given url baseUrlApi + '/rest/ws/kompose/context'
    And headers apiheader
    And params query_param
    When method get
    Then status 200
    * print 'response------2', response
    And match response contains deep {"name": "contaxt rich 125"}

  # And match response.data contains {id: '#(result.data._id)'}

#    Examples:
#    |name|botKey|
#    |contaxt rich 118|c8edca02-f4fa-42ff-899e-acf2e3297d7c|

  Examples:
    |read('classpath:testData/chatContaxt.csv')|


  Scenario Outline: Contaxt api  passing with body data with call get api and verify the bot id with data driven

    * def requestpayload =
"""
    {
    "name": <name>,
    "botKey": <botKey>
    }
    """
    * def apiheader = {Authorization:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjo4MzY3NCwiYXBwbGljYXRpb25JZCI6IjMzNDYxY2IyMzE4NTFkMjc5NGUyMGQ0NTExNWIwZWY4MCIsImVtYWlsIjoidmlwaW4remVuZGVzazE1MDIyMDIyQGtvbW11bmljYXRlLmlvIiwicGFzc3dvcmQiOiIkMmIkMTAkZXpiSzJBWjRucTdxUU5LMzd3T2NlZXc0NWtmc1hUSWxVZ3NLUTFPM1U5LlZDdVFNZDhFeE8iLCJ1c2VyTmFtZSI6InZpcGluK3plbmRlc2sxNTAyMjAyMkBrb21tdW5pY2F0ZS5pbyIsInR5cGUiOjMsImdlbmVyYXRlZEF0IjoxNjYxMjUzMTY5OTU2LCJlbmNyeXB0ZWQiOmZhbHNlfSwiaWF0IjoxNjYxMjUzMTY5LCJleHAiOjE2NjM4NDUxNjl9.yMBPhKt6lHiOSOFclZfEjRf4yHUpP8nsMawZ_R0GjOQ',Content-Type:'application/json'}
    * def query_param = {botKey:<botKey>}
    Given url baseUrlApi + '/rest/ws/kompose/context'
    And request requestpayload
    And headers apiheader
    When method post
    Then status 201
    * print 'response------1', response
    * def result = response
    * print result
    * print result.data._id


    Given url baseUrlApi + '/rest/ws/kompose/context'
    And headers apiheader
    And params query_param
    When method get
    Then status 200
    * print 'response------2', response
     And match contains deep {"name": "contaxt rich 122",}
    # And match response.data contains {id: '#(result.data._id)'}

   Examples:
     |name|botKey|
     |contaxt rich 126|c8edca02-f4fa-42ff-899e-acf2e3297d7c|

