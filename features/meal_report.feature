Feature: Meal Report

Scenario: I see this weeks meal reports
  Given there are meal reports 
  When I navigate to the meal report index
  Then I see meal reports for this week
  And I don't see reports for other weeks