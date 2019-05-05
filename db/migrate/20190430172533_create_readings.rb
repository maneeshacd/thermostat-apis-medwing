class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.references :thermostat, foreign_key: true
      t.integer :number, null: false, unique: true
      t.float :temperature, null: false
      t.float :humidity, null: false
      t.float :battery_charge, null: false
      t.string :token, null: false, unique: true
      t.timestamps
    end
    add_index :readings, :token, unique: true
  end
end
