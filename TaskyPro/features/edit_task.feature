Feature: Edit an existing task

  Scenario: Change the task name
    The user should be able to change the name of task.

    Given I am on the Task Details screen
    And I already have the task "LearnObjectiveC"
    When I change the name to "Learn iOS programming"

    Then I should be on the TaskyPro screen
    And I should see the "Learn iOS programming" task in the list
