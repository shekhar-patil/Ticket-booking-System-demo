require 'rails_helper'

RSpec.describe "shows/index", type: :view do
  before(:each) do
    assign(:shows, [
      Show.create!(
        movie: nil,
        theater: nil,
        available: false
      ),
      Show.create!(
        movie: nil,
        theater: nil,
        available: false
      )
    ])
  end

  it "renders a list of shows" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
