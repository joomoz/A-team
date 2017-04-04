Feature: User can add an article reference to the system

Scenario: User can add an article reference to the system
    Given: User goes to new reference page
    And User fills Key: M17
    And User fills Entry type: article
    And User fills Author: Moilanen J.
    When User clicks Create Reference
    Then Page confirms it

