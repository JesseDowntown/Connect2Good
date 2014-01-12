Feature: Search for needs

  Scenario: I am a user
    Given I am on the home page
    When I search for "book"
    Then needs related to books are returned