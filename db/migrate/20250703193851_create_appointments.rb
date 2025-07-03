class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.string :name, null: false
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
