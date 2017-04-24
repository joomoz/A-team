require 'rails_helper'

RSpec.describe "manuals/edit", type: :view do
  before(:each) do
    @manual = assign(:manual, Manual.create!(
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

  it "renders the edit manual form" do
    render

    assert_select "form[action=?][method=?]", manual_path(@manual), "post" do

      assert_select "input#manual_key[name=?]", "manual[key]"

      assert_select "textarea#manual_author[name=?]", "manual[author]"

      assert_select "textarea#manual_title[name=?]", "manual[title]"

      assert_select "textarea#manual_journal[name=?]", "manual[journal]"

      assert_select "input#manual_year[name=?]", "manual[year]"

      assert_select "input#manual_volume[name=?]", "manual[volume]"

      assert_select "input#manual_number[name=?]", "manual[number]"

      assert_select "input#manual_pages[name=?]", "manual[pages]"

      assert_select "input#manual_month[name=?]", "manual[month]"

      assert_select "textarea#manual_note[name=?]", "manual[note]"

      assert_select "textarea#manual_publisher[name=?]", "manual[publisher]"

      assert_select "textarea#manual_series[name=?]", "manual[series]"

      assert_select "textarea#manual_address[name=?]", "manual[address]"

      assert_select "textarea#manual_edition[name=?]", "manual[edition]"

      assert_select "textarea#manual_booktitle[name=?]", "manual[booktitle]"

      assert_select "textarea#manual_editor[name=?]", "manual[editor]"

      assert_select "textarea#manual_organization[name=?]", "manual[organization]"

      assert_select "input#manual_entry_type[name=?]", "manual[entry_type]"

      assert_select "textarea#manual_annote[name=?]", "manual[annote]"

      assert_select "textarea#manual_chapter[name=?]", "manual[chapter]"

      assert_select "textarea#manual_crossref[name=?]", "manual[crossref]"

      assert_select "textarea#manual_howpublished[name=?]", "manual[howpublished]"

      assert_select "textarea#manual_institution[name=?]", "manual[institution]"

      assert_select "textarea#manual_school[name=?]", "manual[school]"

      assert_select "textarea#manual_type[name=?]", "manual[type]"
    end
  end
end
