class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

  has_many :posts
  has_many :drafts, -> { drafts }, class_name: 'Post'
  has_many :recently_posts, -> { recently_posts }, class_name: 'Post'
end
