Feature: As a user I want to be able to add an article reference to the system

    Scenario: User can add an article reference to the system
        Given User goes to new article page
        And  User fills Key "MMM", Author "Mike", Title "titteli", Journal "Lehti", Year 2001 and Volume 1
        When User clicks Create Article
        Then Page contains line "Article was successfully created"

    Scenario: Adding articles to the system increases article count
        Given User goes to new article page
        And User fills Key "MMM", Author "Mike", Title "titteli", Journal "Lehti", Year 2001 and Volume 1
        When User clicks Create Article
        Then The amount of articles has increased by one

    Scenario: Article without all required fields is not saved
        Given User goes to "New Article" page
        And User fills Key "MMM", Author "Mike"
        When User clicks "Create Article"
        Then Page contains line "errors prohibited this article from being saved"
