class ChangeDescriptionColumnType < ActiveRecord::Migration
  def change
    change_column :products, :description, :text
  end
end
