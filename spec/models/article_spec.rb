require 'rails_helper'

RSpec.describe Article, type: :model do
  it "has all the fields that article needs set correctly" do
    ref = Reference.new key: "Key1", author:"Author",  title:"Fancy Article",
      journal:"Journal", year:2017, volume:12

    expect(ref.key).to eq("Key1")
    expect(ref.author).to eq("Author")
    expect(ref.title).to eq("Fancy Article")
    expect(ref.journal).to eq("Journal")
    expect(ref.year).to eq(2017)
    expect(ref.volume).to eq(12)
    expect(ref).to be_valid
  end

end
