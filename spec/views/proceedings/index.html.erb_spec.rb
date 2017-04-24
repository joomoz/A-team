require 'rails_helper'

RSpec.describe "proceedings/index", type: :view do
  before(:each) do
    assign(:proceedings, [
      Proceeding.create!(
        :key => "Key",
        :author => "MyText",
        :title => "MyText",
        :journal => "MyText",
        :year => 2,
        :volume => 3,
        :number => 4,
        :pages => "Pages",
        :month => 5,
        :note => "MyText",
        :publisher => "MyText",
        :series => "MyText",
        :address => "MyText",
        :edition => "MyText",
        :booktitle => "MyText",
        :editor => "MyText",
        :organization => "MyText",
        :entry_type => "Entry Type",
        :annote => "MyText",
        :chapter => "MyText",
        :crossref => "MyText",
        :howpublished => "MyText",
        :institution => "MyText",
        :school => "MyText",
        :type => "MyText"
      ),
      Proceeding.create!(
        :key => "Key",
        :author => "MyText",
        :title => "MyText",
        :journal => "MyText",
        :year => 2,
        :volume => 3,
        :number => 4,
        :pages => "Pages",
        :month => 5,
        :note => "MyText",
        :publisher => "MyText",
        :series => "MyText",
        :address => "MyText",
        :edition => "MyText",
        :booktitle => "MyText",
        :editor => "MyText",
        :organization => "MyText",
        :entry_type => "Entry Type",
        :annote => "MyText",
        :chapter => "MyText",
        :crossref => "MyText",
        :howpublished => "MyText",
        :institution => "MyText",
        :school => "MyText",
        :type => "MyText"
      )
    ])
  end

  it "renders a list of proceedings" do
    render
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Pages".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Entry Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
