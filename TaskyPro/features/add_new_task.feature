Feature: Add New Task

  Scenario: Add a new Task
    Given I am on the Task Details screen
    When I add the "Learn Objective-C" task
    And tap the Save button

    Then I should be on the TaskyPro screen
    And I should see the "Learn Objective-C" task in the list
