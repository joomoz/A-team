require 'rails_helper'

RSpec.describe ReferencesController, type: :controller do
    let(:refCont){ReferencesController.new}
    #refCont = ReferencesController.new

    it "has index list all references" do
      refs = refCont.index
      expect(refs.count).to eq(0)
    end

    it "has new create an empty new reference" do
        ref = refCont.new
        expect(ref.author).to eq(nil)
    end

    it "has checking to prevent creating incorrect reference" do
        #ref = refCont.create
        #expect(ref.save).to eq(false)
    end
end
