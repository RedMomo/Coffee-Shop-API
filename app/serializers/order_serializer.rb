class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :fulfilled, :address, :telephone, :email
end
