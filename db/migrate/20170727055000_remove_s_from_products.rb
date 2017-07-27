class RemoveSFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :s, :string
  end
end
