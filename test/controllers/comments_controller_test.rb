require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # modified form tdd lesson 8
  test "comment_create" do

    place = FactoryGirl.create(:place)
    user = FactoryGirl.create(:user)
    sign_in user

    # from rake route
    # place_comments POST   /places/:place_id/comments(.:format) comments#create
    # I need place_id and comment
    assert_difference 'Comment.count' do
      post :create, :place_id => place.id, :comment => {
        :rating => '5_stars',
        :message => 'awesome',
      }
    end

    assert_equal 1, place.comments.count
    # assert_redirected_to place_path
    # from Q&A, use place_path(place)
    # see also create method on comment_controller.rb
    #  ->   redirect_to place_path(@place)
    assert_redirected_to place_path(place)
  end

end
