Feature: Meal Report

Scenario: I see this weeks meal reports
  Given there are meal reports 
  When I navigate to the meal report index
  Then I see meal reports for this week
  And I don't see reports for other weeks

Scenario: I see next weeks meal report
  Given there are meal reports  
  When I navigate to the meal report index
  And I go to the next week
  Then I don't see meal reports for this week
  And I see meal reports for next week