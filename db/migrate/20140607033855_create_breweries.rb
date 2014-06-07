class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :brewery
      t.string :email
      t.string :password
    end
  end
end
