class RemoveStatusFromTickets < ActiveRecord::Migration
  def change
    remove_column :tickets, :status, :string
  end
end
