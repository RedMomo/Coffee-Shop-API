class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :order_id, :total_price, :quantity
end
