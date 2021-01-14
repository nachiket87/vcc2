class AddPositionToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :position, :integer
  end
end
