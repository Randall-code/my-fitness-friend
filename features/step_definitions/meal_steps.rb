When('I click create meal') do
  date = Date.today.strftime('%Y-%m-%d')
  find("##{date}").click_on('Create Meal')
end

When('i fill in the meal details') do
  select 'Breakfast', from: 'meal[meal_type]'
end

Then('I see it on the correct meal report') do
  expect(find("##{date}")).to have_content('Breakfast')
end
