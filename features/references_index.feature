Feature: User can see a list of references

  Scenario: User can see references index page
    When: User goes to the index reference page
    Then: Page confirms it

  Scenario: User can see a single reference on references index page
    When: User goes to the index reference page
    Then: Page contains one article

