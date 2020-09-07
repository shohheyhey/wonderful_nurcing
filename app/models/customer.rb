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
class Customer < ApplicationRecord
  belongs_to :office
  belongs_to :category
  has_many :services, through: :service_customers, dependent: :nullify
  has_many :service_customers, dependent: :nullify
  accepts_nested_attributes_for :service_customers

  validates :name, presence: true
  validates :kaigodo, length: { in: 1..5 }
  validates :birthday, presence: true
end
