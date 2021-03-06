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
#  category_id     :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_customers_on_category_id  (category_id)
#  index_customers_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :customer do
    user_id { 1 }
    category_id { rand(1..5) }
    name { Faker::Name.name }
    age { rand(65..100) }
    birthday { Faker::Date.birthday }
    kaigodo { rand(1..5) }
    medical_history { Faker::Lorem.sentence }
    discription { Faker::Lorem.sentence }

  end
end
