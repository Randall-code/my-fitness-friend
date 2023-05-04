# frozen_string_literal: true

Given('there are meal reports') do
  @report_this_week = create(:meal_report)
  @report_next_week = create(:meal_report, report_date: Time.zone.now + 1.week)
end

Given('there are meals') do
  @report_this_week.meals.create(meal_type: 'Breakfast')
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

When('I click on the meal report') do
  @date = Date.today.strftime('%Y-%m-%d')
  find("##{@date}").click_on('View Details')
end

Then('I see the meal report and its meal data') do
  expect(page).to have_content(@report_this_week.report_date)
  @report_this_week.meals.each do |meal|
    expect(page).to have_content(meal.meal_type)
  end
end
