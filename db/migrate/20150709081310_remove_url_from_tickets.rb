class RemoveUrlFromTickets < ActiveRecord::Migration
  def change
    remove_column :tickets, :url, :string
  end
end
