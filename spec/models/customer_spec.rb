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
require 'rails_helper'

RSpec.describe Customer, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
