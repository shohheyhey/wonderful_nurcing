# == Schema Information
#
# Table name: customers
#
#  id              :bigint           not null, primary key
#  age             :integer
#  birthday        :date
#  discription     :text
#  kaigodo         :integer
#  medical_history :text
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  category_id     :bigint
#  office_id       :bigint
#
# Indexes
#
#  index_customers_on_category_id  (category_id)
#  index_customers_on_office_id    (office_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (office_id => offices.id)
#
FactoryBot.define do
  factory :customer do
    office_id { 1 }
    category_id { rand(1..5) }
    name { Faker::Name.name }
    age { rand(65..100) }
    birthday { Faker::Date.birthday }
    kaigodo { rand(1..5) }
    medical_history { Faker::Lorem.sentence }
    discription { Faker::Lorem.sentence }

  end
end
