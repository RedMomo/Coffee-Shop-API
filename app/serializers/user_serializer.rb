class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :admin, :carts, :cart_items, :products
end
