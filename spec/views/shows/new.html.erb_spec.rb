require 'rails_helper'

RSpec.describe "shows/new", type: :view do
  before(:each) do
    assign(:show, Show.new(
      movie: nil,
      theater: nil,
      available: false
    ))
  end

  it "renders new show form" do
    render

    assert_select "form[action=?][method=?]", shows_path, "post" do

      assert_select "input[name=?]", "show[movie_id]"

      assert_select "input[name=?]", "show[theater_id]"

      assert_select "input[name=?]", "show[available]"
    end
  end
end
