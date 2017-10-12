require 'spec_helper'

describe Event do
  let(:event) { Event.create(name: 'Cube Night')}
  let(:user) { User.create(username: 'yihdego')}
  let(:some_user) { User.create(username: 'somebody')}
  let(:some_else) { User.create(username: 'someone else')}
  let(:tag) { Tag.create(name: "Magic the Gathering")}
  describe 'attributes' do
    it 'has a name' do
      expect(event.name).to eq 'Cube Night'
    end
  end

  describe 'assocations' do
    it 'has admins' do
      event.admin = user
      expect(event.admin).to eq user
    end
    it 'has no particpants' do
      expect(event.participates).to eq([])
    end
    it 'has participants' do
      event.users << some_user
      event.users << some_else
      expect(event.users).to eq([some_user, some_else])
    end
    it 'has a tag' do
      event.tags << tag
      event.reload
      expect(event.tags).to include(tag)
    end
  end

  describe 'validations' do
    it 'is not valid without a name'
  end
end
