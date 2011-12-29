class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :gender
      t.string :nickname
      t.string :email

      t.timestamps
    end
  end
end
