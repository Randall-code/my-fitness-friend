FactoryBot.define do
  factory :meal_report do
    first_name { 'John' }
    last_name  { 'Doe' }
    email { john @email_provider.com }
    mobile_number { 7_860_945_310 }
  end
end
