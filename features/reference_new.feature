Feature: As a user I want to be able to add any reference to the system.

  Scenario: User can add a manual reference to the system
    Given User goes to a new manual page
    And  User fills Title "Manual for life", Key "Man1"
    When User clicks Create Manual
    Then Page contains text "Manual was successfully created"

  Scenario: User can add a techreport reference to the system
    Given User goes to new techreport page
    And  User fills Author "Engineer", Title "Report", Institution "MIT", Year 1998, Key "TR2"
    When User clicks Create Techreport
    Then Page contains text "Techreport was successfully created"
