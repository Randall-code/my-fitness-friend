# frozen_string_literal: true

Given('there are meal reports') do
  @report_this_week = create(:meal_report)
  @report_next_week = create(:meal_report, report_date: Time.zone.now + 1.week)
end

When('I visit the homepage') do
  visit('/')
end

Then('I see meal reports for this week') do
  expect(page).to have_css("#meal-report-#{@report_this_week.id}")
end

Then("I don't see reports for other weeks") do
  expect(page).to_not have_css("#meal-report-#{@report_next_week.id}")
end

Then("I don't see meal reports for this week") do
  expect(page).to_not have_css("#meal-report-#{@report_this_week.id}")
end

Then('I see meal reports for next week') do
  expect(page).to have_css("#meal-report-#{@report_next_week.id}")
end

When('I go to the next week') do
  click_on('Next')
end
