require 'rails_helper'

RSpec.describe Unpuplished, type: :model do
  it "has all the fields that it needs set correctly" do
    ref = Reference.new key: "Key1", author:"Author",  title:"Not so good article",
      note:"Not published"

    expect(ref.key).to eq("Key1")
    expect(ref.author).to eq("Author")
    expect(ref.title).to eq("Not so good article")
    expect(ref.note).to eq("Not published")
    expect(ref).to be_valid
  end
end
