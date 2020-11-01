class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :theater, null: false, foreign_key: true
      t.datetime :start_date
      t.boolean :available

      t.timestamps
    end
  end
end
