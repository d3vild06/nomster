require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
    test "add comment success" do
       user = FactoryGirl.create(:user)
       sign_in user
       
       place = FactoryGirl.create(:place)
       assert_difference 'Comment.count' do
        post :create, :place_id => place.id, :comment => { :rating => '3_stars', :message => 'Love working out here!'}
       end
      assert_redirected_to place_path(place)
      assert_equal 1, place.comments.count
    end
end
