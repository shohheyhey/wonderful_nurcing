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
class Category < ApplicationRecord
end
