require 'rails_helper'

RSpec.describe Misc, type: :model do
  it "is valid wihtout limitations" do
    ref = Reference.new key: "Keyyyy"

    expect(ref).to be_valid
  end
end
