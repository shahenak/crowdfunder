class AddReferenceAttributeToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :backer_id, :integer
    add_column :donations, :project_id, :integer
  end
end
