class AddUserIdToBirds < ActiveRecord::Migration
  def self.up
    add_column :birds, :user_id, :integer
  end

  def self.down
    remove_column :birds, :user_id
  end
end
