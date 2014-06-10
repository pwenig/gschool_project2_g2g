class RenameBeerTableToProductTable < ActiveRecord::Migration
  def change
    rename_table :beers, :products
  end
end
