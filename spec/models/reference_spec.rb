require 'rails_helper'

RSpec.describe Reference, type: :model do
  it "has author set correctly" do
    ref = Reference.new author:"Fancy Article"

    expect(ref.author).to eq("Fancy Article")
  end

  it "has all the fields that article needs set correctly" do
    ref = Reference.new key: "Key1", author:"Writer",  title:"Article",
      journal:"Paper", year:1990, volume:10

    expect(ref.key).to eq("Key1")
    expect(ref.author).to eq("Writer")
    expect(ref.title).to eq("Article")
    expect(ref.journal).to eq("Paper")
    expect(ref.year).to eq(1990)
    expect(ref.volume).to eq(10)
  end

  
end
