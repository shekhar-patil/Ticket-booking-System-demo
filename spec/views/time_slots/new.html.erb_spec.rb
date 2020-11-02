require 'rails_helper'

RSpec.describe "time_slots/new", type: :view do
  before(:each) do
    assign(:time_slot, TimeSlot.new(
      screen: nil
    ))
  end

  it "renders new time_slot form" do
    render

    assert_select "form[action=?][method=?]", time_slots_path, "post" do

      assert_select "input[name=?]", "time_slot[screen_id]"
    end
  end
end
