class AddUniqueIndexToShows < ActiveRecord::Migration[6.0]
  def change
    add_index :shows, [:movie_id, :theater_id], unique: true
  end
end
