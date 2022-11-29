class User < ApplicationRecord
    has_many :carts
    has_many :orders 
    has_many :products

    validates_presence_of :first_name, :last_name, :email, :password, :admin 
    validates :email, uniqueness: true
    validates :password, length: { in: 6..20 }
    validates :password, format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/, message: "must contain at least one letter and one number." }
    # This works! But...why? (look up regex)
end
