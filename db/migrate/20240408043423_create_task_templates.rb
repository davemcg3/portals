class CreateTaskTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :task_templates do |t|
      t.string :name
      t.integer :frequency
      t.references :task_type, null: false, foreign_key: true
      t.boolean :singlable

      t.timestamps
    end
  end
end
