require 'rails_helper'

RSpec.describe "conferences/new", type: :view do
  before(:each) do
    assign(:conference, Conference.new(
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

  it "renders new conference form" do
    render

    assert_select "form[action=?][method=?]", conferences_path, "post" do

      assert_select "input#conference_key[name=?]", "conference[key]"

      assert_select "textarea#conference_author[name=?]", "conference[author]"

      assert_select "textarea#conference_title[name=?]", "conference[title]"

      assert_select "textarea#conference_journal[name=?]", "conference[journal]"

      assert_select "input#conference_year[name=?]", "conference[year]"

      assert_select "input#conference_volume[name=?]", "conference[volume]"

      assert_select "input#conference_number[name=?]", "conference[number]"

      assert_select "input#conference_pages[name=?]", "conference[pages]"

      assert_select "input#conference_month[name=?]", "conference[month]"

      assert_select "textarea#conference_note[name=?]", "conference[note]"

      assert_select "textarea#conference_publisher[name=?]", "conference[publisher]"

      assert_select "textarea#conference_series[name=?]", "conference[series]"

      assert_select "textarea#conference_address[name=?]", "conference[address]"

      assert_select "textarea#conference_edition[name=?]", "conference[edition]"

      assert_select "textarea#conference_booktitle[name=?]", "conference[booktitle]"

      assert_select "textarea#conference_editor[name=?]", "conference[editor]"

      assert_select "textarea#conference_organization[name=?]", "conference[organization]"

      assert_select "input#conference_entry_type[name=?]", "conference[entry_type]"

      assert_select "textarea#conference_annote[name=?]", "conference[annote]"

      assert_select "textarea#conference_chapter[name=?]", "conference[chapter]"

      assert_select "textarea#conference_crossref[name=?]", "conference[crossref]"

      assert_select "textarea#conference_howpublished[name=?]", "conference[howpublished]"

      assert_select "textarea#conference_institution[name=?]", "conference[institution]"

      assert_select "textarea#conference_school[name=?]", "conference[school]"

      assert_select "textarea#conference_type[name=?]", "conference[type]"
    end
  end
end
