Feature: As a user I want to be able to create a BibTeX file so that it can be inserted in to a LaTeX document

    Scenario: BibTex file of references can be downloaded
        Given User goes to "Download Bibtex File" page
        When User enters name "File" and clicks "Create Bibtex"
        And Selects the download location the project root
        Then The project root contains a Bibtex file named "File"
