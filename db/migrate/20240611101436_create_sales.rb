class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.decimal :total

      t.timestamps
    end
  end
end
