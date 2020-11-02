class AddShowToScreens < ActiveRecord::Migration[6.0]
  def change
    add_reference :screens, :show
  end
end
