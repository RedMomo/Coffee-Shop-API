class Product < ApplicationRecord
    belongs_to :user, optional: true
    # belongs_to :additional_info, optional: true
    has_many :cart_items
    has_many :carts, through: :cart_items
    has_many :orders

    validates_presence_of :title, :roast, :description, :price, :tasting_notes, :image_url
    validates :title, uniqueness: true
    validates :image_url, uniqueness: true
    validates :price, numericality: { greater_than: 0 }
    validates :description, length: { in: 65..800 }
    validates :roast, inclusion: { in: %w(Light Medium Dark Blend), message: "input has angered the coffee gods! '%{value}' is not a valid roast!" }
end
