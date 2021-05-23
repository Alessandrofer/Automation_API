Feature: Users

  Scenario: I want to create a new user
    Given I have authentication to todo.ly
    When I send POST request 'api/user.json' with json and BASIC authentication
    """{
    "Email":"fernaleam@gmail.com",
    "FullName":"Alejandro Ozuna",
    "Password":"Password123"
    }
    """
    Then I expected the response code 200
    And I expected the response body is equal
    """
    "Id": EXCLUDE,
    "Email": "fernaleam@gmail.com",
    "Password": null,
    "FullName": "Alejandro Ozuna",
    "TimeZone": 0,
    "IsProUser": false,
    "DefaultProjectId": EXCLUDE,
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": 0,
    "FirstDayOfWeek": 0,
    "NewTaskDueDate": -1,
    "TimeZoneId": "Pacific Standard Time"
    """
   And I get the property value 'ID' and save on ID_USER

    #When I send PUT request 'path' with json and BASIC authentication
 #   """
  #  {
#
 #   }
  #  """
    #Then I expected the response code 200