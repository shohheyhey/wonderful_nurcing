# == Schema Information
#
# Table name: service_customers
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint
#  service_id  :bigint
#
# Indexes
#
#  index_service_customers_on_customer_id  (customer_id)
#  index_service_customers_on_service_id   (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#  fk_rails_...  (service_id => services.id)
#
FactoryBot.define do
  factory :service_customer do
    service { "" }
    customer { "" }
  end
end
