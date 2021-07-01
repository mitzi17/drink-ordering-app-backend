class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_many :drinks
end
