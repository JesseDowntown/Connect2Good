Feature: Search for needs on C2G home page

  Scenario: Search for needs
    Given I am on the C2G home page
    When I search for "book"
    Then needs related to books are returned