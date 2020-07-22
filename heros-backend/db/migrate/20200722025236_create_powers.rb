class CreatePowers < ActiveRecord::Migration[6.0]
  def change
    create_table :powers do |t|
      t.string :name
      t.string :description
      t.references :hero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
