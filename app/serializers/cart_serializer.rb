class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :active

  has_many :products
end
