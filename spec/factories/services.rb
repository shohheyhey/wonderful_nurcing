# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  fee         :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#  office_id   :bigint
#
# Indexes
#
#  index_services_on_category_id  (category_id)
#  index_services_on_office_id    (office_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (office_id => offices.id)
#
FactoryBot.define do
  factory :service do
    office { "" }
    category { "" }
    name { "MyString" }
    fee { 1 }
  end
end
