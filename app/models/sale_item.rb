class SaleItem < ApplicationRecord
  belongs_to :item
  belongs_to :sale

  validates :quantity, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }

  after_save :update_item_stock

  private

  def update_item_stock
    item.update(quantity: item.quantity - quantity)
  end
end
