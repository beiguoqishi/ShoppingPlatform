class CreateProductItems < ActiveRecord::Migration
  def change
    create_table :product_items do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
