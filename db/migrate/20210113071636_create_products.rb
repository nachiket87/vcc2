class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :rating
      t.decimal :price
      t.boolean :in_cart

      t.timestamps
    end
  end
end
