class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :belonged_shop
      t.string :area
      t.integer :deals
      t.float :trans_expense
      t.string :picture
      t.string :color
      t.float :eval_grade
      t.float :own_score

      t.timestamps
    end
  end
end
