require 'spec_helper'

describe User do
  let(:event) { Event.create(name: 'Cube Night')}
  describe 'attributes' do
    it 'has a name' do
      expect(event.name).to eq 'Cube Night'
    end
  end

  describe 'assocations' do
    it 'has admins'
    it 'has participates'
  end

  describe 'validations' do
    it 'is not valid without a name'
  end
end
