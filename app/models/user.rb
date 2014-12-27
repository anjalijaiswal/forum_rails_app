class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
 has_many :posts, :dependent => :destroy
 has_many :topics, :dependent => :destroy
 has_many :comments, :dependent => :destroy
 
 validates :username , presence: true
 validates :username, :email , uniqueness: true
end
