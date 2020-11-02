require 'rails_helper'

RSpec.describe "time_slots/index", type: :view do
  before(:each) do
    assign(:time_slots, [
      TimeSlot.create!(
        screen: nil
      ),
      TimeSlot.create!(
        screen: nil
      )
    ])
  end

  it "renders a list of time_slots" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
