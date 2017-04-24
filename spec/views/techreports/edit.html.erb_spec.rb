require 'rails_helper'

RSpec.describe "techreports/edit", type: :view do
  before(:each) do
    @techreport = assign(:techreport, Techreport.create!(
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

  it "renders the edit techreport form" do
    render

    assert_select "form[action=?][method=?]", techreport_path(@techreport), "post" do

      assert_select "input#techreport_key[name=?]", "techreport[key]"

      assert_select "textarea#techreport_author[name=?]", "techreport[author]"

      assert_select "textarea#techreport_title[name=?]", "techreport[title]"

      assert_select "textarea#techreport_journal[name=?]", "techreport[journal]"

      assert_select "input#techreport_year[name=?]", "techreport[year]"

      assert_select "input#techreport_volume[name=?]", "techreport[volume]"

      assert_select "input#techreport_number[name=?]", "techreport[number]"

      assert_select "input#techreport_pages[name=?]", "techreport[pages]"

      assert_select "input#techreport_month[name=?]", "techreport[month]"

      assert_select "textarea#techreport_note[name=?]", "techreport[note]"

      assert_select "textarea#techreport_publisher[name=?]", "techreport[publisher]"

      assert_select "textarea#techreport_series[name=?]", "techreport[series]"

      assert_select "textarea#techreport_address[name=?]", "techreport[address]"

      assert_select "textarea#techreport_edition[name=?]", "techreport[edition]"

      assert_select "textarea#techreport_booktitle[name=?]", "techreport[booktitle]"

      assert_select "textarea#techreport_editor[name=?]", "techreport[editor]"

      assert_select "textarea#techreport_organization[name=?]", "techreport[organization]"

      assert_select "input#techreport_entry_type[name=?]", "techreport[entry_type]"

      assert_select "textarea#techreport_annote[name=?]", "techreport[annote]"

      assert_select "textarea#techreport_chapter[name=?]", "techreport[chapter]"

      assert_select "textarea#techreport_crossref[name=?]", "techreport[crossref]"

      assert_select "textarea#techreport_howpublished[name=?]", "techreport[howpublished]"

      assert_select "textarea#techreport_institution[name=?]", "techreport[institution]"

      assert_select "textarea#techreport_school[name=?]", "techreport[school]"

      assert_select "textarea#techreport_type[name=?]", "techreport[type]"
    end
  end
end
