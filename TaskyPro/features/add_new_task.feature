Feature: Add New Task

  Scenario: Add a new Task
    Given I am on the Task Details screen
    When I name the Task "Learn Objective-C"
    When notes are "It helps with creating Xamarin.iOS bindings if you know Objective-C"
    And tap the Save button

    Then I should be on the TaskyPro screen
    And I should see "Learn Objective-C" in the list
