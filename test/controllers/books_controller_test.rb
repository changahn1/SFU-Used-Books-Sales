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
    get(:index, params:{department:1 })
    assert_response :success
    assert_includes @response.body, '106'
  end
end
