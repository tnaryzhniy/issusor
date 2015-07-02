class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :subject
      t.text :body
      t.string :status
      t.string :reference
      t.string :url
      t.references :stuff, index: true

      t.timestamps null: false
    end
    add_foreign_key :tickets, :stuffs
  end
end
