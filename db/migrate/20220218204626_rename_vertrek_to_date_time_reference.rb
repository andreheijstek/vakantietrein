class RenameVertrekToDateTimeReference < ActiveRecord::Migration[7.0]
  def change
    rename_column :route_goals, :vertrek, :date_time_reference
  end
end
