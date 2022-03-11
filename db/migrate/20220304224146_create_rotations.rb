class CreateRotations < ActiveRecord::Migration[7.0]
  def change
    create_table :rotations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.references :portalable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
