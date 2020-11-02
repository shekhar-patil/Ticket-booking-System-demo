require 'rails_helper'

RSpec.describe "time_slots/show", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!(
      screen: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
