require 'spec_helper'

describe User do
  let(:user) { User.create(username: 'yihdego')}
  describe 'attributes' do
    it 'has a username' do
      expect(user.username).to eq 'yihdego'
    end
  end

  describe 'assocations' do
    it 'has event it admins'
    it 'has event it participates'
  end

  describe 'validations' do
    it 'is not valid without a name'
  end
end
