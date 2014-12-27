class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :post_id,:user_id,:content ,presence: true

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :tag_list
end
