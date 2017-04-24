require 'rails_helper'

RSpec.describe "proceedings/edit", type: :view do
  before(:each) do
    @proceeding = assign(:proceeding, Proceeding.create!(
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

  it "renders the edit proceeding form" do
    render

    assert_select "form[action=?][method=?]", proceeding_path(@proceeding), "post" do

      assert_select "input#proceeding_key[name=?]", "proceeding[key]"

      assert_select "textarea#proceeding_author[name=?]", "proceeding[author]"

      assert_select "textarea#proceeding_title[name=?]", "proceeding[title]"

      assert_select "textarea#proceeding_journal[name=?]", "proceeding[journal]"

      assert_select "input#proceeding_year[name=?]", "proceeding[year]"

      assert_select "input#proceeding_volume[name=?]", "proceeding[volume]"

      assert_select "input#proceeding_number[name=?]", "proceeding[number]"

      assert_select "input#proceeding_pages[name=?]", "proceeding[pages]"

      assert_select "input#proceeding_month[name=?]", "proceeding[month]"

      assert_select "textarea#proceeding_note[name=?]", "proceeding[note]"

      assert_select "textarea#proceeding_publisher[name=?]", "proceeding[publisher]"

      assert_select "textarea#proceeding_series[name=?]", "proceeding[series]"

      assert_select "textarea#proceeding_address[name=?]", "proceeding[address]"

      assert_select "textarea#proceeding_edition[name=?]", "proceeding[edition]"

      assert_select "textarea#proceeding_booktitle[name=?]", "proceeding[booktitle]"

      assert_select "textarea#proceeding_editor[name=?]", "proceeding[editor]"

      assert_select "textarea#proceeding_organization[name=?]", "proceeding[organization]"

      assert_select "input#proceeding_entry_type[name=?]", "proceeding[entry_type]"

      assert_select "textarea#proceeding_annote[name=?]", "proceeding[annote]"

      assert_select "textarea#proceeding_chapter[name=?]", "proceeding[chapter]"

      assert_select "textarea#proceeding_crossref[name=?]", "proceeding[crossref]"

      assert_select "textarea#proceeding_howpublished[name=?]", "proceeding[howpublished]"

      assert_select "textarea#proceeding_institution[name=?]", "proceeding[institution]"

      assert_select "textarea#proceeding_school[name=?]", "proceeding[school]"

      assert_select "textarea#proceeding_type[name=?]", "proceeding[type]"
    end
  end
end
