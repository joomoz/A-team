require 'rails_helper'

RSpec.describe Manual, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "Manual2", title:"Fancy Manual"

    expect(ref.key).to eq("Manual2")
    expect(ref.title).to eq("Fancy Manual")
    expect(ref).to be_valid
  end
end
