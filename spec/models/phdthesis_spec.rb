require 'rails_helper'

RSpec.describe Phdthesis, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "PHD56", author:"T. Ohtori",  title:"Ph.D. Thesis",
      school:"Univ. Helsinki", year:1956

    expect(ref.key).to eq("PHD56")
    expect(ref.author).to eq("T. Ohtori")
    expect(ref.title).to eq("Ph.D. Thesis")
    expect(ref.school).to eq("Univ. Helsinki")
    expect(ref.year).to eq(1956)
    expect(ref).to be_valid
  end
end
