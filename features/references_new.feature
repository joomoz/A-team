Feature: As a user I want to be able to add an article reference to the system

    Scenario: User can add an article reference to the system
        Given User goes to new reference page
        And  User fills Key "MMM"
        When User clicks Create Reference
        Then Page contains line "Reference was successfully created."

    Scenario: Adding articles to the system increases article count
        Given User goes to new reference page
        And User fills Key "MMM"
        When User clicks Create Reference
        Then amount of articles has increased by one
