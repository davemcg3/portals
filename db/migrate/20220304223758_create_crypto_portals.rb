class CreateCryptoPortals < ActiveRecord::Migration[7.0]
  def change
    create_table :crypto_portals do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :currency
      t.decimal :quantity

      t.timestamps
    end
  end
end
