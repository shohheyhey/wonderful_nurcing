FactoryBot.define do
  factory :office do
    sequence(:name) {|n| "#{n}_#{Faker::Name.name}" }
    sequence(:email) {|n| "#{n}_#{Faker::Internet.email}" }
    sequence(:password) {|n| "#{n}_#{Faker::Internet.password}" }
    password_confirmation { password }
    # id{ Faker::Number.number }
  end
end
