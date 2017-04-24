require 'rails_helper'

RSpec.describe "masterstheses/edit", type: :view do
  before(:each) do
    @mastersthesis = assign(:mastersthesis, Mastersthesis.create!(
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

  it "renders the edit mastersthesis form" do
    render

    assert_select "form[action=?][method=?]", mastersthesis_path(@mastersthesis), "post" do

      assert_select "input#mastersthesis_key[name=?]", "mastersthesis[key]"

      assert_select "textarea#mastersthesis_author[name=?]", "mastersthesis[author]"

      assert_select "textarea#mastersthesis_title[name=?]", "mastersthesis[title]"

      assert_select "textarea#mastersthesis_journal[name=?]", "mastersthesis[journal]"

      assert_select "input#mastersthesis_year[name=?]", "mastersthesis[year]"

      assert_select "input#mastersthesis_volume[name=?]", "mastersthesis[volume]"

      assert_select "input#mastersthesis_number[name=?]", "mastersthesis[number]"

      assert_select "input#mastersthesis_pages[name=?]", "mastersthesis[pages]"

      assert_select "input#mastersthesis_month[name=?]", "mastersthesis[month]"

      assert_select "textarea#mastersthesis_note[name=?]", "mastersthesis[note]"

      assert_select "textarea#mastersthesis_publisher[name=?]", "mastersthesis[publisher]"

      assert_select "textarea#mastersthesis_series[name=?]", "mastersthesis[series]"

      assert_select "textarea#mastersthesis_address[name=?]", "mastersthesis[address]"

      assert_select "textarea#mastersthesis_edition[name=?]", "mastersthesis[edition]"

      assert_select "textarea#mastersthesis_booktitle[name=?]", "mastersthesis[booktitle]"

      assert_select "textarea#mastersthesis_editor[name=?]", "mastersthesis[editor]"

      assert_select "textarea#mastersthesis_organization[name=?]", "mastersthesis[organization]"

      assert_select "input#mastersthesis_entry_type[name=?]", "mastersthesis[entry_type]"

      assert_select "textarea#mastersthesis_annote[name=?]", "mastersthesis[annote]"

      assert_select "textarea#mastersthesis_chapter[name=?]", "mastersthesis[chapter]"

      assert_select "textarea#mastersthesis_crossref[name=?]", "mastersthesis[crossref]"

      assert_select "textarea#mastersthesis_howpublished[name=?]", "mastersthesis[howpublished]"

      assert_select "textarea#mastersthesis_institution[name=?]", "mastersthesis[institution]"

      assert_select "textarea#mastersthesis_school[name=?]", "mastersthesis[school]"

      assert_select "textarea#mastersthesis_type[name=?]", "mastersthesis[type]"
    end
  end
end
