require 'rails_helper'

RSpec.describe Inproceeding, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "D17", author:"Dummie",  title:"For Dummmies",
      booktitle:"Rspec for dummies", year:2017

    expect(ref.key).to eq("D17")
    expect(ref.author).to eq("Dummie")
    expect(ref.title).to eq("For Dummmies")
    expect(ref.booktitle).to eq("Rspec for dummies")
    expect(ref.year).to eq(2017)
    expect(ref).to be_valid
  end
end
