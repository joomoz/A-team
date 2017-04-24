require 'rails_helper'

RSpec.describe "incollections/edit", type: :view do
  before(:each) do
    @incollection = assign(:incollection, Incollection.create!(
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

  it "renders the edit incollection form" do
    render

    assert_select "form[action=?][method=?]", incollection_path(@incollection), "post" do

      assert_select "input#incollection_key[name=?]", "incollection[key]"

      assert_select "textarea#incollection_author[name=?]", "incollection[author]"

      assert_select "textarea#incollection_title[name=?]", "incollection[title]"

      assert_select "textarea#incollection_journal[name=?]", "incollection[journal]"

      assert_select "input#incollection_year[name=?]", "incollection[year]"

      assert_select "input#incollection_volume[name=?]", "incollection[volume]"

      assert_select "input#incollection_number[name=?]", "incollection[number]"

      assert_select "input#incollection_pages[name=?]", "incollection[pages]"

      assert_select "input#incollection_month[name=?]", "incollection[month]"

      assert_select "textarea#incollection_note[name=?]", "incollection[note]"

      assert_select "textarea#incollection_publisher[name=?]", "incollection[publisher]"

      assert_select "textarea#incollection_series[name=?]", "incollection[series]"

      assert_select "textarea#incollection_address[name=?]", "incollection[address]"

      assert_select "textarea#incollection_edition[name=?]", "incollection[edition]"

      assert_select "textarea#incollection_booktitle[name=?]", "incollection[booktitle]"

      assert_select "textarea#incollection_editor[name=?]", "incollection[editor]"

      assert_select "textarea#incollection_organization[name=?]", "incollection[organization]"

      assert_select "input#incollection_entry_type[name=?]", "incollection[entry_type]"

      assert_select "textarea#incollection_annote[name=?]", "incollection[annote]"

      assert_select "textarea#incollection_chapter[name=?]", "incollection[chapter]"

      assert_select "textarea#incollection_crossref[name=?]", "incollection[crossref]"

      assert_select "textarea#incollection_howpublished[name=?]", "incollection[howpublished]"

      assert_select "textarea#incollection_institution[name=?]", "incollection[institution]"

      assert_select "textarea#incollection_school[name=?]", "incollection[school]"

      assert_select "textarea#incollection_type[name=?]", "incollection[type]"
    end
  end
end
