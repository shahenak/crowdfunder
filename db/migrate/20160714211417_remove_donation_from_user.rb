class RemoveDonationFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :donation, :float
  end
end
