require 'rails_helper'

RSpec.describe Incollection, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "Key1", author:"Author",  title:"Fancy Article",
      booktitle:"Book", publisher:"Publisher", year:2017

    expect(ref.key).to eq("Key1")
    expect(ref.author).to eq("Author")
    expect(ref.title).to eq("Fancy Article")
    expect(ref.booktitle).to eq("Book")
    expect(ref.publisher).to eq("Publisher")
    expect(ref.year).to eq(2017)
    expect(ref).to be_valid
  end
end
