require 'spec_helper'

describe User do
  let(:user) { User.create(username: 'yihdego')}
  let(:event) { Event.create(name: 'Cube Night', admin: user)}
  let(:second_event) { Event.create(name: 'D&D session')}
  describe 'attributes' do
    it 'has a username' do
      expect(user.username).to eq 'yihdego'
    end
  end

  describe 'assocations' do
    it 'has event it admins' do
      expect(user.admined_events).to eq([event])
    end
    xit 'has event it participates' do
      p "*" * 40
      p user.events
      p second_event.users
      second_event.users << user
      p second_event.users
      p user.events
      expect(user.events).to include(second_event)
    end
  end

  describe 'validations' do
    it 'is not valid without a name'
  end
end
