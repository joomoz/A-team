require 'rails_helper'

RSpec.describe Mastersthesis, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "G38", author:"E. ESimerkki",  title:"Gradu",
      school:"Univ. Helsinki", year:1938

    expect(ref.key).to eq("G38")
    expect(ref.author).to eq("E. ESimerkki")
    expect(ref.title).to eq("Gradu")
    expect(ref.school).to eq("Univ. Helsinki")
    expect(ref.year).to eq(1938)
    expect(ref).to be_valid
  end
end
