class Book < ActiveRecord::Base
    belongs_to :user
<<<<<<< HEAD
    has_many :reviews
=======
>>>>>>> 9154163c9b2d4d3cf0133f712980f740a3d38c25
    
    has_attached_file :avatar, :styles => { :medium => "250x350>", :thumb => "325x475" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
