class Book < ActiveRecord::Base
    belongs_to :user
    belongs_to :department
    has_many :reviews
    
    has_attached_file :avatar, :styles => { :medium => "250x350>", :thumb => "325x475" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
    validates_presence_of :title
    validates_presence_of :cnumber
    validates_presence_of :quality
    validates_presence_of :publisher
    validates_presence_of :campus
    validates_presence_of :price
    validates_presence_of :department_id
    
end






