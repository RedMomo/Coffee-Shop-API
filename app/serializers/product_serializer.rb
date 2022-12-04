class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :featured, :roast, :single_origin, :description, :price, :tasting_notes, :image_url
end 
