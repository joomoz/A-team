require 'rails_helper'

RSpec.describe Booklet, type: :model do
  it "has all the fields that booklet needs set correctly" do
    ref = Reference.new key: "Key1", title:"ABC"

    expect(ref.key).to eq("Key1")
    expect(ref.title).to eq("ABC")
    expect(ref).to be_valid
  end
end
