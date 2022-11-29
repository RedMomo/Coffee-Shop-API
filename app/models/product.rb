class Product < ApplicationRecord
    belongs_to :user 
    belongs_to :additional_info 
    has_many :cart_items
    #should has_many cart_items be dependent: :destroy?
    has_many :carts, through: :cart_items
    has_many :orders

    validates_presence_of :title, :featured, :roast, :single_origin, :description, :price, :tasting_notes, :image_url
    #will need to put additional info back, when it exists
    validates :title, uniqueness: true
    validates :image_url, uniqueness: true
    validates :price, numericality: { greater_than: 0 }
    validates :description, length: { in: 65..500 }
    validates :roast, inclusion: { in: %w(Light Medium Dark Blend), message: "input has angered the coffee gods! '%{value}' is not a valid roast!" }
end
