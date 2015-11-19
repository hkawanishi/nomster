require 'test_helper'

class CommentTest < ActiveSupport::TestCase
 
  test "rating_check" do
  	rating1 = Comment.new(:rating => '1_star').humanized_rating 
  	expected = "one star"
  	actual = rating1
  	assert_equal expected, actual

  	rating2 = Comment.new(:rating => '2_stars').humanized_rating 
  	expected = "two stars"
  	actual = rating2
  	assert_equal expected, actual

  	rating3 = Comment.new(:rating => '3_stars').humanized_rating 
  	expected = "three stars"
  	actual = rating3
  	assert_equal expected, actual

  	rating4 = Comment.new(:rating => '4_stars').humanized_rating 
  	expected = "four stars"
  	actual = rating4
  	assert_equal expected, actual

  	rating5 = Comment.new(:rating => '5_stars').humanized_rating 
  	expected = "five stars"
  	actual = rating5
  	assert_equal expected, actual
  end

end
