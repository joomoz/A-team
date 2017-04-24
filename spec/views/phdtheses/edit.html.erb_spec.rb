require 'rails_helper'

RSpec.describe "phdtheses/edit", type: :view do
  before(:each) do
    @phdthesis = assign(:phdthesis, Phdthesis.create!(
      :key => "MyString",
      :author => "MyText",
      :title => "MyText",
      :journal => "MyText",
      :year => 1,
      :volume => 1,
      :number => 1,
      :pages => "MyString",
      :month => 1,
      :note => "MyText",
      :publisher => "MyText",
      :series => "MyText",
      :address => "MyText",
      :edition => "MyText",
      :booktitle => "MyText",
      :editor => "MyText",
      :organization => "MyText",
      :entry_type => "MyString",
      :annote => "MyText",
      :chapter => "MyText",
      :crossref => "MyText",
      :howpublished => "MyText",
      :institution => "MyText",
      :school => "MyText",
      :type => "MyText"
    ))
  end

  it "renders the edit phdthesis form" do
    render

    assert_select "form[action=?][method=?]", phdthesis_path(@phdthesis), "post" do

      assert_select "input#phdthesis_key[name=?]", "phdthesis[key]"

      assert_select "textarea#phdthesis_author[name=?]", "phdthesis[author]"

      assert_select "textarea#phdthesis_title[name=?]", "phdthesis[title]"

      assert_select "textarea#phdthesis_journal[name=?]", "phdthesis[journal]"

      assert_select "input#phdthesis_year[name=?]", "phdthesis[year]"

      assert_select "input#phdthesis_volume[name=?]", "phdthesis[volume]"

      assert_select "input#phdthesis_number[name=?]", "phdthesis[number]"

      assert_select "input#phdthesis_pages[name=?]", "phdthesis[pages]"

      assert_select "input#phdthesis_month[name=?]", "phdthesis[month]"

      assert_select "textarea#phdthesis_note[name=?]", "phdthesis[note]"

      assert_select "textarea#phdthesis_publisher[name=?]", "phdthesis[publisher]"

      assert_select "textarea#phdthesis_series[name=?]", "phdthesis[series]"

      assert_select "textarea#phdthesis_address[name=?]", "phdthesis[address]"

      assert_select "textarea#phdthesis_edition[name=?]", "phdthesis[edition]"

      assert_select "textarea#phdthesis_booktitle[name=?]", "phdthesis[booktitle]"

      assert_select "textarea#phdthesis_editor[name=?]", "phdthesis[editor]"

      assert_select "textarea#phdthesis_organization[name=?]", "phdthesis[organization]"

      assert_select "input#phdthesis_entry_type[name=?]", "phdthesis[entry_type]"

      assert_select "textarea#phdthesis_annote[name=?]", "phdthesis[annote]"

      assert_select "textarea#phdthesis_chapter[name=?]", "phdthesis[chapter]"

      assert_select "textarea#phdthesis_crossref[name=?]", "phdthesis[crossref]"

      assert_select "textarea#phdthesis_howpublished[name=?]", "phdthesis[howpublished]"

      assert_select "textarea#phdthesis_institution[name=?]", "phdthesis[institution]"

      assert_select "textarea#phdthesis_school[name=?]", "phdthesis[school]"

      assert_select "textarea#phdthesis_type[name=?]", "phdthesis[type]"
    end
  end
end
