require 'rails_helper'

RSpec.describe "shows/show", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      movie: nil,
      theater: nil,
      available: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
