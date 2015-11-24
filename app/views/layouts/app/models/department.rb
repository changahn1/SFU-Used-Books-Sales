class Department < ActiveRecord::Base
    has_many :books
end
