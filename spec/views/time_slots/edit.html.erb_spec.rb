require 'rails_helper'

RSpec.describe "time_slots/edit", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!(
      screen: nil
    ))
  end

  it "renders the edit time_slot form" do
    render

    assert_select "form[action=?][method=?]", time_slot_path(@time_slot), "post" do

      assert_select "input[name=?]", "time_slot[screen_id]"
    end
  end
end
