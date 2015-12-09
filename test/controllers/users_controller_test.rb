require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  	test "should get new" do
	    get :new
	    assert_response :success
  	end

  	def test_should_get_index
	  	get :index
	  	assert_response :success
	  	assert_not_nil assigns(:users)
  	end

	def test_should_create_user
  		assert_difference('User.count') do
    		post :create, :user => { :name => 'David', :email => 'david@haha.com'}
  		end
  		assert_redirected_to post_path(assigns(:user))
  		assert_equal 'User was successfully created.', flash[:notice]
	end

end
