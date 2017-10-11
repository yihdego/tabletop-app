require 'spec_helper'

describe Tag do
  let(:tag) { Tag.create(name: "Magic the Gathering")}
  describe 'attributes' do
    it 'has a name' do
      expect(tag.name).to eq 'Magic the Gathering'
    end
  end
end
