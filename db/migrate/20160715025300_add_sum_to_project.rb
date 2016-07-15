class AddSumToProject < ActiveRecord::Migration
  def change
    add_column :projects, :sum, :float, default: 0
  end
end
