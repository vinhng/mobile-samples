Feature: Add New Task

  Scenario: Add a new Task
    Given I am on the Task Details screen
    When I add the "LearnObjectiveC" task

    Then I should be on the TaskyPro screen
    And I should see the "LearnObjectiveC" task in the list
