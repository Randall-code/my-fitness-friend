FactoryBot.define do
  factory :meal_report do
    report_date { Time.zone.now }
  end
end
