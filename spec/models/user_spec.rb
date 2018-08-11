require 'rails_helper'

RSpec.describe User, type: :model do
     it 'ensures user presence' do
        user = User.new(email:'sample@example.com').save
        expect(user).to eq(false)
      end

      it 'ensures user email presence' do
        user = User.new(userid:'batman').save
        expect(user).to eq(false)
      end
  end