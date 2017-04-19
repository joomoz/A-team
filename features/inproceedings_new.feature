Feature: As a user I want to be able to add a in proceedings reference to the system.

    Scenario: All fields required for book have to be filled
        Given User goes to "New Inproceeding" page
        And User fills Key "MMM", Author "Mike"
        When User clicks "Create Inproceeding"
        Then Page contains line "errors prohibited this inproceeding from being saved"

    Scenario: User can create entries
        Given User goes to "New Inproceeding" page
        And  User fills Key "MMM", Author "Mike", Title "titteli", Year 2000, Booktitle "kirja"
        When User clicks "Create Inproceeding"
        Then Page contains line "Inproceeding was successfully created"
