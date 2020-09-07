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
class Service < ApplicationRecord
  belongs_to :office
  belongs_to :category
  has_many :customers, thorough: :service_customers
  has_many :service_customers
  accepts_nested_attributes_for :service_customers
end
