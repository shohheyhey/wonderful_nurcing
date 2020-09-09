class Api::V1::CustomerSerializer < ActiveModel::Serializer
  attributes :id, :office, :category, :name, :age, :birthday, :kaigodo, :medical_history, :discription
  belongs_to :office
  belongs_to :category
  has_many :services, through: :service_customers, dependent: :nullify
  has_many :service_customers, dependent: :nullify
end
