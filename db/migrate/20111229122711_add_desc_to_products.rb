class AddDescToProducts < ActiveRecord::Migration
  def change
    add_column :products, :desc, :text
  end
end
