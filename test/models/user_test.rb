require "test_helper"

class UserTest < ActiveSupport::TestCase

    test "user should be valid" do
      assert User.new(name: "user1", password:"111111", accountNumber:9999999999999999).valid?
      assert_not User.new(name: "us", password:"111111", accountNumber:9999999999999999).valid?
      assert_not User.new(name: "user1", password:"", accountNumber:9999999999999999).valid?
      assert_not User.new(name: "user1", password:"111111", accountNumber:9).valid?
      assert_not User.new(name: "user1", password:"111111", accountNumber:"aaaaaaaaaaaaaaaa").valid?
    end
end
