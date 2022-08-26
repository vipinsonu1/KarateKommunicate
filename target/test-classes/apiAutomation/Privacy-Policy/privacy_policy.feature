Feature: Privacy policy apis

 Scenario: Privacy policy passing with body data
  * def requestpayload =
    """
    {"acceptedPolicyVersion": 12}
    """
 * def apiheader = {Authorization:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjo4NzM5NCwiYXBwbGljYXRpb25JZCI6ImQzMzIyMWI2MTAyYTk0MjU5YjAzOTNmZmQwZjFkZDM2IiwiZW1haWwiOiJ2aXBpbit0ZXN0a20yODA3MjAyMkBrb21tdW5pY2F0ZS5pbyIsInBhc3N3b3JkIjoiJDJiJDEwJFRLdVZWdWVPeXJHL2cvV2guQVYvZy5JOFc2UUFnOXAwT0RTc2oyQVk0eVhPdlVkV2luSzJTIiwidXNlck5hbWUiOiJ2aXBpbit0ZXN0a20yODA3MjAyMkBrb21tdW5pY2F0ZS5pbyIsInR5cGUiOjMsImdlbmVyYXRlZEF0IjoxNjU5MDA3NTc5MTE0LCJlbmNyeXB0ZWQiOmZhbHNlfSwiaWF0IjoxNjU5MDA3NTc5LCJleHAiOjE2NjE1OTk1Nzl9.A8yQxuOj1DCubu_vT0SARC2exF5stAoyj7hktXGbd2A',Content-Type:'application/json'}
 * def query_param = {applicationId:'d33221b6102a94259b0393ffd0f1dd36'}
  Given url baseUrlApi + '/rest/ws/customers/privacy-policy'
  And request requestpayload
  And headers apiheader
  And params query_param
  When method post
  Then status 201
 * print response


 Scenario: Privacy policy passing without body data
  * def apiheader = {Authorization:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjo4NzM5NCwiYXBwbGljYXRpb25JZCI6ImQzMzIyMWI2MTAyYTk0MjU5YjAzOTNmZmQwZjFkZDM2IiwiZW1haWwiOiJ2aXBpbit0ZXN0a20yODA3MjAyMkBrb21tdW5pY2F0ZS5pbyIsInBhc3N3b3JkIjoiJDJiJDEwJFRLdVZWdWVPeXJHL2cvV2guQVYvZy5JOFc2UUFnOXAwT0RTc2oyQVk0eVhPdlVkV2luSzJTIiwidXNlck5hbWUiOiJ2aXBpbit0ZXN0a20yODA3MjAyMkBrb21tdW5pY2F0ZS5pbyIsInR5cGUiOjMsImdlbmVyYXRlZEF0IjoxNjU5MDA3NTc5MTE0LCJlbmNyeXB0ZWQiOmZhbHNlfSwiaWF0IjoxNjU5MDA3NTc5LCJleHAiOjE2NjE1OTk1Nzl9.A8yQxuOj1DCubu_vT0SARC2exF5stAoyj7hktXGbd2A',Content-Type:'application/json'}
  * def query_param = {applicationId:'d33221b6102a94259b0393ffd0f1dd36'}
  Given url baseUrlApi + '/rest/ws/customers/privacy-policy'
  And headers apiheader
  And params query_param
  When method post
  Then status 400
  * def JsonResponse = response
  * print JsonResponse.errors.messages



 Scenario: Privacy policy feaching Privacy policy
  * def apiheader = {Authorization:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjo4NzM5NCwiYXBwbGljYXRpb25JZCI6ImQzMzIyMWI2MTAyYTk0MjU5YjAzOTNmZmQwZjFkZDM2IiwiZW1haWwiOiJ2aXBpbit0ZXN0a20yODA3MjAyMkBrb21tdW5pY2F0ZS5pbyIsInBhc3N3b3JkIjoiJDJiJDEwJFRLdVZWdWVPeXJHL2cvV2guQVYvZy5JOFc2UUFnOXAwT0RTc2oyQVk0eVhPdlVkV2luSzJTIiwidXNlck5hbWUiOiJ2aXBpbit0ZXN0a20yODA3MjAyMkBrb21tdW5pY2F0ZS5pbyIsInR5cGUiOjMsImdlbmVyYXRlZEF0IjoxNjU5MDA3NTc5MTE0LCJlbmNyeXB0ZWQiOmZhbHNlfSwiaWF0IjoxNjU5MDA3NTc5LCJleHAiOjE2NjE1OTk1Nzl9.A8yQxuOj1DCubu_vT0SARC2exF5stAoyj7hktXGbd2A',Content-Type:'application/json'}
  * def query_param = {applicationId:'d33221b6102a94259b0393ffd0f1dd36'}
  Given url baseUrlApi + '/rest/ws/customers/privacy-policy'
  And headers apiheader
  And params query_param
  When method get
  Then status 200
  * def JsonResponse = response
  * print JsonResponse.message


 Scenario:  Feaching Privacy policy without header
  * def query_param = {applicationId:'d33221b6102a94259b0393ffd0f1dd36'}
  Given url baseUrlApi + '/rest/ws/customers/privacy-policy'
  And params query_param
  When method get
  Then status 401
  * def JsonResponse = response
  * print JsonResponse


