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

end