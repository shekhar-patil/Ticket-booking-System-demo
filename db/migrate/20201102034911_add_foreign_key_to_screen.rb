class AddForeignKeyToScreen < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :screens, :shows
  end
end
