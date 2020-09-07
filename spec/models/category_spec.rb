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
require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end