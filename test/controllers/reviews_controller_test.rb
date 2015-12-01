require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
   test "the truth" do
     assert true
   end
   
   setup do
    @review = reviews(:one)
  end

  test "should not get index" do
    get :index
    assert_redirected_to login_path
  end

  test "should not get new" do
    get :new
    assert_redirected_to login_path
  end

  test "should not get create" do
    post :create
    assert_redirected_to login_path
  end

  test "should not get destroy" do
    post :destroy, id: @review.id
    assert_redirected_to login_path
  end

end
