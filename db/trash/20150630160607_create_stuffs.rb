class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :username
      t.string :password
      t.string :department
      t.string :role

      t.timestamps null: false
    end
  end
end
