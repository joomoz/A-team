require 'rails_helper'

RSpec.describe "unpuplisheds/edit", type: :view do
  before(:each) do
    @unpuplished = assign(:unpuplished, Unpuplished.create!(
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

  it "renders the edit unpuplished form" do
    render

    assert_select "form[action=?][method=?]", unpuplished_path(@unpuplished), "post" do

      assert_select "input#unpuplished_key[name=?]", "unpuplished[key]"

      assert_select "textarea#unpuplished_author[name=?]", "unpuplished[author]"

      assert_select "textarea#unpuplished_title[name=?]", "unpuplished[title]"

      assert_select "textarea#unpuplished_journal[name=?]", "unpuplished[journal]"

      assert_select "input#unpuplished_year[name=?]", "unpuplished[year]"

      assert_select "input#unpuplished_volume[name=?]", "unpuplished[volume]"

      assert_select "input#unpuplished_number[name=?]", "unpuplished[number]"

      assert_select "input#unpuplished_pages[name=?]", "unpuplished[pages]"

      assert_select "input#unpuplished_month[name=?]", "unpuplished[month]"

      assert_select "textarea#unpuplished_note[name=?]", "unpuplished[note]"

      assert_select "textarea#unpuplished_publisher[name=?]", "unpuplished[publisher]"

      assert_select "textarea#unpuplished_series[name=?]", "unpuplished[series]"

      assert_select "textarea#unpuplished_address[name=?]", "unpuplished[address]"

      assert_select "textarea#unpuplished_edition[name=?]", "unpuplished[edition]"

      assert_select "textarea#unpuplished_booktitle[name=?]", "unpuplished[booktitle]"

      assert_select "textarea#unpuplished_editor[name=?]", "unpuplished[editor]"

      assert_select "textarea#unpuplished_organization[name=?]", "unpuplished[organization]"

      assert_select "input#unpuplished_entry_type[name=?]", "unpuplished[entry_type]"

      assert_select "textarea#unpuplished_annote[name=?]", "unpuplished[annote]"

      assert_select "textarea#unpuplished_chapter[name=?]", "unpuplished[chapter]"

      assert_select "textarea#unpuplished_crossref[name=?]", "unpuplished[crossref]"

      assert_select "textarea#unpuplished_howpublished[name=?]", "unpuplished[howpublished]"

      assert_select "textarea#unpuplished_institution[name=?]", "unpuplished[institution]"

      assert_select "textarea#unpuplished_school[name=?]", "unpuplished[school]"

      assert_select "textarea#unpuplished_type[name=?]", "unpuplished[type]"
    end
  end
end
