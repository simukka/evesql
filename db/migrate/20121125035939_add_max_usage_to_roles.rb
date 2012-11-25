class AddMaxUsageToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :max_usage, :integer
  end
end
