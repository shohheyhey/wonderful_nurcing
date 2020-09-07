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
FactoryBot.define do
  factory :customer do
    office { "" }
    category { "" }
    name { "MyString" }
    age { 1 }
    birthday { "2020-09-07" }
    kaigodo { 1 }
    medical_history { "MyText" }
    discription { "MyText" }
  end
end
