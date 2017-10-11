require 'spec_helper'

describe User do
  let(:user) { User.create(username: 'yihdego')}
  let(:event) { Event.create(name: 'Cube Night', admin: user)}
  describe 'attributes' do
    it 'has a username' do
      expect(user.username).to eq 'yihdego'
    end
  end

  describe 'assocations' do
    it 'has event it admins' do
      expect(user.admined_events).to eq([event])
    end
    it 'has event it participates'
  end

  describe 'validations' do
    it 'is not valid without a name'
  end
end
