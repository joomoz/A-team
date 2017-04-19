require 'rails_helper'

RSpec.describe "bibtexes/new", type: :view do
  before(:each) do
    assign(:bibtex, Bibtex.new(
      :name => "MyString"
    ))
  end

  it "renders new bibtex form" do
    render

    assert_select "form[action=?][method=?]", bibtexes_path, "post" do

      assert_select "input#bibtex_name[name=?]", "bibtex[name]"
    end
  end
end
