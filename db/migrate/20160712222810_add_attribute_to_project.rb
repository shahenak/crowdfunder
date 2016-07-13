class AddAttributeToProject < ActiveRecord::Migration
  def change
    add_column :projects, :description, :string
    add_column :projects, :category, :string
    add_column :projects, :location, :string
  end
end
