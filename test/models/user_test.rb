require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(prenom: 'Elonmusk', nom: 'Crew', email: 'mohudaod@gmail.com', password: 'azdnfleaépofnazodin')
  end

  test 'user existenz' do
    assert @user.valid?
  end

  test 'invalid without password' do
    @user.password = nil
    refute @user.valid?, 'saved user without a password'
  end

  test 'invalid without email' do
    @user.email = nil
    refute @user.valid?, 'saved user without an email'
  end

  test 'email already exist' do
    @user.email = User.exists?(:email => @user.email)
    refute @user.valid? 'saved user with an email who already exist'
  end
end
