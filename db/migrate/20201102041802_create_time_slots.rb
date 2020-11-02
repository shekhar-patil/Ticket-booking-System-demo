class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.time :start_time
      t.time :end_time
      t.references :screen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
