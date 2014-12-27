class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts, :dependent => :destroy
  belongs_to :users

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :forum_id, presence: true

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tag_list
end
