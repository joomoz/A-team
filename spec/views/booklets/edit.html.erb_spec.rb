require 'rails_helper'

RSpec.describe "booklets/edit", type: :view do
  before(:each) do
    @booklet = assign(:booklet, Booklet.create!(
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

  it "renders the edit booklet form" do
    render

    assert_select "form[action=?][method=?]", booklet_path(@booklet), "post" do

      assert_select "input#booklet_key[name=?]", "booklet[key]"

      assert_select "textarea#booklet_author[name=?]", "booklet[author]"

      assert_select "textarea#booklet_title[name=?]", "booklet[title]"

      assert_select "textarea#booklet_journal[name=?]", "booklet[journal]"

      assert_select "input#booklet_year[name=?]", "booklet[year]"

      assert_select "input#booklet_volume[name=?]", "booklet[volume]"

      assert_select "input#booklet_number[name=?]", "booklet[number]"

      assert_select "input#booklet_pages[name=?]", "booklet[pages]"

      assert_select "input#booklet_month[name=?]", "booklet[month]"

      assert_select "textarea#booklet_note[name=?]", "booklet[note]"

      assert_select "textarea#booklet_publisher[name=?]", "booklet[publisher]"

      assert_select "textarea#booklet_series[name=?]", "booklet[series]"

      assert_select "textarea#booklet_address[name=?]", "booklet[address]"

      assert_select "textarea#booklet_edition[name=?]", "booklet[edition]"

      assert_select "textarea#booklet_booktitle[name=?]", "booklet[booktitle]"

      assert_select "textarea#booklet_editor[name=?]", "booklet[editor]"

      assert_select "textarea#booklet_organization[name=?]", "booklet[organization]"

      assert_select "input#booklet_entry_type[name=?]", "booklet[entry_type]"

      assert_select "textarea#booklet_annote[name=?]", "booklet[annote]"

      assert_select "textarea#booklet_chapter[name=?]", "booklet[chapter]"

      assert_select "textarea#booklet_crossref[name=?]", "booklet[crossref]"

      assert_select "textarea#booklet_howpublished[name=?]", "booklet[howpublished]"

      assert_select "textarea#booklet_institution[name=?]", "booklet[institution]"

      assert_select "textarea#booklet_school[name=?]", "booklet[school]"

      assert_select "textarea#booklet_type[name=?]", "booklet[type]"
    end
  end
end
