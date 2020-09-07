# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  office_id  :bigint
#
# Indexes
#
#  index_categories_on_office_id  (office_id)
#
# Foreign Keys
#
#  fk_rails_...  (office_id => offices.id)
#
class Category < ApplicationRecord
  belongs_to :office
  has_many :services, dependent: :nullify
end
