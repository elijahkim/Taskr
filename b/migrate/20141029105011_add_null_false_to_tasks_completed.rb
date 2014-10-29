class AddNullFalseToTasksCompleted < ActiveRecord::Migration
  def change
    change_column :tasks, :completed, :boolean, null: false, default: :false
  end
end
