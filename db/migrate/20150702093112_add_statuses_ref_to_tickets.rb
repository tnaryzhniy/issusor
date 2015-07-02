class AddStatusesRefToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :status, index: true
    add_foreign_key :tickets, :statuses
  end
end
