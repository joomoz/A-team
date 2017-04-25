require 'rails_helper'

RSpec.describe Book, type: :model do
  it "has all the fields that book needs set correctly" do
    ref = Reference.new key: "Key1", author:"Author",  title:"Fancy Article",
      publisher:"Otava", year:2017

    expect(ref.key).to eq("Key1")
    expect(ref.author).to eq("Author")
    expect(ref.title).to eq("Fancy Article")
    expect(ref.publisher).to eq("Otava")
    expect(ref.year).to eq(2017)
    expect(ref).to be_valid
  end
end
