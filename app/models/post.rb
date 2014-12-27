class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :topics
  has_many :comments, :dependent => :destroy
  
  validates_presence_of :content, :title
  validates :topic_id,:user_id, presence: true
end
