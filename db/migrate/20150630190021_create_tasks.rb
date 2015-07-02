class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :body
      t.string :ticket_status
      t.references :stuff, index: true
      t.references :ticket, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :stuffs
    add_foreign_key :tasks, :tickets
  end
end
