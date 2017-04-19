require 'rails_helper'

RSpec.describe "bibtexes/index", type: :view do
  before(:each) do
    assign(:bibtexes, [
      Bibtex.create!(
        :name => "Name"
      ),
      Bibtex.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of bibtexes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
