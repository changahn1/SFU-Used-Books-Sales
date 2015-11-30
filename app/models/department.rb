class Department < ActiveRecord::Base
    has_many :books
    
    validates :name, :presence => true
    validates_uniqueness_of :name
end
