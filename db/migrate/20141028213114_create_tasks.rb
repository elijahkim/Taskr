class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :completed
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
