class FixPasswordColumnName < ActiveRecord::Migration
  def change
    rename_column :breweries, :password, :password_digest
  end
end
