class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :breweries, :brewery, :name
  end
end
