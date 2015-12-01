require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
   test "the truth" do
     assert true
   end
   
  

 
   test "should create book" do
    Review.create(comment:"lol", user_id: 1, book_id:4)
    
      
    assert_response :success
   
  end

  

  
end
