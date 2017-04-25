require 'rails_helper'

RSpec.describe Techreport, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "T12", author:"Author",  title:"Fancy Article",
      institution:"MIT", year:2012

    expect(ref.key).to eq("T12")
    expect(ref.author).to eq("Author")
    expect(ref.title).to eq("Fancy Article")
    expect(ref.institution).to eq("MIT")
    expect(ref.year).to eq(2012)
    expect(ref).to be_valid
  end

end
