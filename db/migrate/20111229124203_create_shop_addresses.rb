class CreateShopAddresses < ActiveRecord::Migration
  def change
    create_table :shop_addresses do |t|
      t.string :name
      t.string :street
      t.string :zip
      t.string :city
      t.datetime :building_date

      t.timestamps
    end
  end
end
