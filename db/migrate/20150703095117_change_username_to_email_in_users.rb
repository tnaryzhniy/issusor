class ChangeUsernameToEmailInUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :username, :email
    end
  end
end
