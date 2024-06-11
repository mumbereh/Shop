class Item < ApplicationRecord
    has_many :sale_items
    has_many :sales, through: :sale_items
  
    validates :name, presence: true
    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :price, numericality: { greater_than: 0 }
  end
  