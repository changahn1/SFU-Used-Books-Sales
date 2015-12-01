require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "should get index" do 
    get :index
    assert_response :success
  end
  
 
 
   test "should find cname and cnumber" do 
    get(:index, params:{cnumber: 2760, department:'CMPT' })
    assert_response :success
    assert_includes @response.body, 'There are no books currently'
  end
end
