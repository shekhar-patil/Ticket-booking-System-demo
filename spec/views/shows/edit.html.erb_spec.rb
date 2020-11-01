require 'rails_helper'

RSpec.describe "shows/edit", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      movie: nil,
      theater: nil,
      available: false
    ))
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(@show), "post" do

      assert_select "input[name=?]", "show[movie_id]"

      assert_select "input[name=?]", "show[theater_id]"

      assert_select "input[name=?]", "show[available]"
    end
  end
end
