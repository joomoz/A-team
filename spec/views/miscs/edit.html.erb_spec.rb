require 'rails_helper'

RSpec.describe "miscs/edit", type: :view do
  before(:each) do
    @misc = assign(:misc, Misc.create!(
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

  it "renders the edit misc form" do
    render

    assert_select "form[action=?][method=?]", misc_path(@misc), "post" do

      assert_select "input#misc_key[name=?]", "misc[key]"

      assert_select "textarea#misc_author[name=?]", "misc[author]"

      assert_select "textarea#misc_title[name=?]", "misc[title]"

      assert_select "textarea#misc_journal[name=?]", "misc[journal]"

      assert_select "input#misc_year[name=?]", "misc[year]"

      assert_select "input#misc_volume[name=?]", "misc[volume]"

      assert_select "input#misc_number[name=?]", "misc[number]"

      assert_select "input#misc_pages[name=?]", "misc[pages]"

      assert_select "input#misc_month[name=?]", "misc[month]"

      assert_select "textarea#misc_note[name=?]", "misc[note]"

      assert_select "textarea#misc_publisher[name=?]", "misc[publisher]"

      assert_select "textarea#misc_series[name=?]", "misc[series]"

      assert_select "textarea#misc_address[name=?]", "misc[address]"

      assert_select "textarea#misc_edition[name=?]", "misc[edition]"

      assert_select "textarea#misc_booktitle[name=?]", "misc[booktitle]"

      assert_select "textarea#misc_editor[name=?]", "misc[editor]"

      assert_select "textarea#misc_organization[name=?]", "misc[organization]"

      assert_select "input#misc_entry_type[name=?]", "misc[entry_type]"

      assert_select "textarea#misc_annote[name=?]", "misc[annote]"

      assert_select "textarea#misc_chapter[name=?]", "misc[chapter]"

      assert_select "textarea#misc_crossref[name=?]", "misc[crossref]"

      assert_select "textarea#misc_howpublished[name=?]", "misc[howpublished]"

      assert_select "textarea#misc_institution[name=?]", "misc[institution]"

      assert_select "textarea#misc_school[name=?]", "misc[school]"

      assert_select "textarea#misc_type[name=?]", "misc[type]"
    end
  end
end
