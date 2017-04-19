require 'rails_helper'

RSpec.describe "bibtexes/show", type: :view do
  before(:each) do
    @bibtex = assign(:bibtex, Bibtex.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
