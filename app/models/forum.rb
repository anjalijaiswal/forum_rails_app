class Forum < ActiveRecord::Base
	has_many :topics, :dependent => :destroy

	validates :name, :description, presence: true
  	validates :name, uniqueness: true
  	
end
