class Review < ActiveRecord::Base
    belongs_to :book
    belongs_to :user
    
    validates :comment, :presence => true
    validates :comment, :length =>{maximum:150};

end
