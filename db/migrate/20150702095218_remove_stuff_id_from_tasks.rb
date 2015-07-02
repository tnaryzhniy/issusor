class RemoveStuffIdFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :stuff_id, :integer
  end
end
