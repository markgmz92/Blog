require 'rspec_helper'

class UserTest < ActiveSupport::TestCase

 test 'validations' do
  it {should validata_presence_of :email}
  it {should validate_presence_of :password}
  it {should validate_confirmation_of :password}
  it {should_validate_uniqueness_of(:email).case_insensitive}
end
end
