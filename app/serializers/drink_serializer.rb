class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :base, :flavor, :size, :add_on, :order_id
end
