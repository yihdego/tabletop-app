require 'spec_helper'

describe User do
  let(:event) { Event.create(name: 'Cube Night')}
  let(:some_user) { User.create(username: 'somebody')}
  let(:some_else) { User.create(username: 'someone else')}
  describe 'attributes' do
    it 'has a name' do
      expect(event.name).to eq 'Cube Night'
    end
  end

  describe 'assocations' do
    it 'has admins'
    it 'has no particpants' do
      expect(event.participates).to eq([])
    end
    it 'has participants' do
      event.users << some_user
      event.users << some_else
      expect(event.users).to eq([some_user, some_else])
    end
  end

  describe 'validations' do
    it 'is not valid without a name'
  end
end
