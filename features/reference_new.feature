Feature: As a user I want to be able to add any reference to the system.

    Scenario: User can add a booklet reference to the system
        Given User goes to new booklet page
        And  User fills Title "Booklet"
        When User clicks Create Booklet
        Then Page contains text "Booklet was successfully created"

    Scenario: User can add a conference reference to the system
        Given User goes to new conference page
        And  User fills Author "Person", Title "Conference", Booktitle "Book", Year 2001
        When User clicks Create Conference
        Then Page contains text "Conference was successfully created"

#    Scenario: User can add a inbook reference to the system
#        Given User goes to new inbook page
#        And  User fills Author "Author", Title "Inbook", Pages "1-23", Publisher "Publisher", Year 2001
#        When User clicks Create Inbook
#        Then Page contains text "Inbook was successfully created"

    Scenario: User can add a incollection reference to the system
        Given User goes to new incollection page
        And  User fills Author "Auhtor", Title "Incollection", Booktitle "Book", Publisher "publishe", Year 1998
        When User clicks Create Incollection
        Then Page contains text "Incollection was successfully created"

    Scenario: User can add a manual reference to the system
        Given User goes to a new manual page
        And  User fills Title "Manual for life", Key "Man1"
        When User clicks Create Manual
        Then Page contains text "Manual was successfully created"

    Scenario: User can add a mastersthesis reference to the system
        Given User goes to new mastersthesis page
        And  User fills Author "Opiskelija", Title "Mastersthesis", School "MIT", Year 1998
        When User clicks Create Mastersthesis
        Then Page contains text "Mastersthesis was successfully created"

    Scenario: User can add a misc reference to the system
        Given User goes to new misc page
        And  User fills Author "Misc", Title "Misc"
        When User clicks Create Misc
        Then Page contains text "Misc was successfully created"

    Scenario: User can add a phdthesis reference to the system
        Given User goes to new phdthesis page
        And  User fills Author "Tutkija", Title "PhD", School "Helsingin yliopisto", Year 2001
        When User clicks Create Phdthesis
        Then Page contains text "Phdthesis was successfully created"

    Scenario: User can add a proceedings reference to the system
        Given User goes to new proceedings page
        And  User fills Title "Proceedings", Year 2001
        When User clicks Create Proceedings
        Then Page contains text "Proceeding was successfully created"

    Scenario: User can add a techreport reference to the system
        Given User goes to new techreport page
        And  User fills Author "Engineer", Title "Report", Institution "MIT", Year 1998
        When User clicks Create Techreport
        Then Page contains text "Techreport was successfully created"

    Scenario: User can add a unpublished reference to the system
        Given User goes to new unpublished page
        And  User fills Author "Mystery", Title "unpublished", Note "Mystery publication"
        When User clicks Create Unpublishded
        Then Page contains text "Unpuplished was successfully created"
