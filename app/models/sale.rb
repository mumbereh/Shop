class Sale < ApplicationRecord
    has_many :sale_items
    has_many :items, through: :sale_items
  
    validates :total, numericality: { greater_than_or_equal_to: 0 }
  end
  