require 'rails_helper'

RSpec.describe Proceeding, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "Key1", title:"This is a title", year:1999

    expect(ref.key).to eq("Key1")
    expect(ref.title).to eq("This is a title")
    expect(ref.year).to eq(1999)
    expect(ref).to be_valid
  end

end
