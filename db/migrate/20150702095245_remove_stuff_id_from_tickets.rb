class RemoveStuffIdFromTickets < ActiveRecord::Migration
  def change
    remove_column :tickets, :stuff_id, :integer
  end
end
