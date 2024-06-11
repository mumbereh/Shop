class CreateSaleItems < ActiveRecord::Migration[7.1]
  def change
    create_table :sale_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
