class AddCheckboxToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :chack, :boolean
  end
end
