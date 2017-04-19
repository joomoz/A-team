Feature: As a user I want to be able to add a book reference to the system

    Scenario: All fields required for book have to be filled
        Given User goes to "New Book" page
        And User fills Key "MMM", Author "Mike"
        When User clicks "Create Book"
        Then Page contains line "errors prohibited this book from being saved"

    Scenario: User can add a book reference to the system
        Given User goes to "New Book" page
        And  User fills Key "MMM", Author "Mike", Title "titteli", Year 2000, Publisher "julkaisija"
        When User clicks "Create Book"
        Then Page contains line "Book was successfully created"
