class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :date
      t.string :venue
      t.integer :entrance
      t.string :tickets_available_at

      t.timestamps
    end
  end
end
