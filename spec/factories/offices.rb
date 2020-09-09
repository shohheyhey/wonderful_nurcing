FactoryBot.define do
  factory :office do
    # id { Faker::Number.number }
    sequence(:name) {|n| "#{n}_#{Faker::Name.name}" }
    sequence(:email) {|n| "#{n}_#{Faker::Internet.email}" }
    sequence(:password) {|n| "#{n}_#{Faker::Internet.password}" }
    password_confirmation { password }
  end
end
