class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :base
      t.string :flavor
      t.string :size
      t.string :add_on
      t.integer :order_id

      t.timestamps
    end
  end
end
