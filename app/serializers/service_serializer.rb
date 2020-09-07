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
class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :office, :category, :name, :fee
end
