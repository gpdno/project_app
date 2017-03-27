class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :action
      t.text :comment
      t.integer :project_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
