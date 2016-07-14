class AddDonationToUser < ActiveRecord::Migration
  def change
    add_column :users, :donation, :float
  end
end
