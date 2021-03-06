# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  fee         :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_services_on_category_id  (category_id)
#  index_services_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (user_id => users.id)
#
class Service < ApplicationRecord
  belongs_to :user
  belongs_to :category
end
