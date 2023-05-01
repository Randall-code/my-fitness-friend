Feature: Meal

Scenario: I can create a meal on a meal report
  When I visit the homepage
  And I click create meal
  And i fill in the meal details
  Then I see it on the correct meal report