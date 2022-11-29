class ProductwithadditionalinfoSerializer < ActiveModel::Serializer
  attributes :title, :featured, :roast, :single_origin, :description, :price, :tasting_notes, :image_url

  belongs_to :additional_info
end
