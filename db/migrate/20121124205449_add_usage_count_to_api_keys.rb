class AddUsageCountToApiKeys < ActiveRecord::Migration
  def change
    add_column :api_keys, :usage_count, :integer, :default => 0
  end
end
