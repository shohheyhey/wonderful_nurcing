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
require 'rails_helper'

RSpec.describe ServiceCustomer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
