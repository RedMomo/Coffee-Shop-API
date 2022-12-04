class Product < ApplicationRecord
    belongs_to :user, optional: true
    # belongs_to :additional_info, optional: true
    has_many :cart_items, dependent: :destroy
    has_many :carts, through: :cart_items
    has_many :orders

    validates_presence_of :title, :roast, :description, :price, :tasting_notes, :image_url
    #will need to put additional info back, when it exists; along with featured, single_origin, and inStock (all booleans that would not be accepted unless set to true)
    validates :title, uniqueness: true
    # validates :single_origin, inclusion: { in: %w(true false), message: "%{value} is not a valid boolean" }
    # I don't know why this doesn't work, but I'm not sure it's necessary anyway
    # validates :image_url, uniqueness: true
    validates :price, numericality: { greater_than: 0 }
    validates :description, length: { in: 65..800 }
    validates :roast, inclusion: { in: %w(Light Medium Dark Blend), message: "input has angered the coffee gods! '%{value}' is not a valid roast!" }
end
