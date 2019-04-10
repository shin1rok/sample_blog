class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 256 }
  validates :content, presence: true, length: { maximum: 65_535 }
end
