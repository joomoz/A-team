Feature: As a user I want to be able to remove any reference from the system.

  Scenario: User can remove an article reference from the system
    Given user goes to the index reference page
    And first creates one reference
    When User clicks Destroy
    Then Page contains text "was successfully destroyed"
