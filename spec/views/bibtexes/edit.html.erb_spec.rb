require 'rails_helper'

RSpec.describe "bibtexes/edit", type: :view do
  before(:each) do
    @bibtex = assign(:bibtex, Bibtex.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit bibtex form" do
    render

    assert_select "form[action=?][method=?]", bibtex_path(@bibtex), "post" do

      assert_select "input#bibtex_name[name=?]", "bibtex[name]"
    end
  end
end
