require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: 'test user', email: 'divn2661@gmail.com', password: '12345')
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test 'name should not exceed 50 character' do
    @user.name = 'd'*90
    assert_not @user.valid?
  end

  test 'email validation should not accept invalid emails' do
    invalid_addresses = %w[userexample.com USER@foo]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?
    end
  end

  test 'name should not be empty' do
    @user.name = ' '
    assert_not @user.valid?
  end

end