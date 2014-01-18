require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user should input a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty? #asserting that the errors on the first_name field sre not empty
  	assert !user.errors[:last_name].empty? 
  	assert !user.errors[:profile_name].empty?
  end
end
