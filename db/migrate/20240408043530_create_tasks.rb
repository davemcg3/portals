class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :task_template, null: false, foreign_key: true
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
