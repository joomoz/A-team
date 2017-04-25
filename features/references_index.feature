Feature: As a user I want to be able to list the references in a human-friendly way so that I can check them.

  Scenario: User can see references index page
    When User goes to the index reference page
    Then Page contains line "Listing References"

  Scenario: User can see a single reference on references index page
    Given I have articles titled "HelloWorld"
    When User goes to the index reference page
    Then Page contains line "HelloWorld"

  Scenario: User can see multiple references on references index page
    Given I have articles titled "HelloYou, HellowWorld"
    When User goes to the index reference page
    Then Page contains line "HelloYou"
    And Page contains line "HellowWorld"

  Scenario: User can delete entries
      Given I have references titled "HelloYou, HelloWorld"
      When User goes to the index reference page
      And Clicks "Destroy" reference titled "HelloYou"
      Then Page does not contain line "HelloYou"
