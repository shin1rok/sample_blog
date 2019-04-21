class Post < ApplicationRecord
  belongs_to :user

  enum status: { draft: 0, published: 1, restricted: 2, unpublished: 3 }

  validates :title, presence: true, length: { maximum: 256 }
  validates :content, presence: true, length: { maximum: 65_535 }

  scope :trends, ->(scope) do
    case scope&.to_sym
    when :weekly
      weekly.order(created_at: :desc).limit(20)
    when :monthly
      monthly.order(created_at: :desc).limit(20)
    else
      daily.order(created_at: :desc).limit(20)
    end
  end
  # Time.currentは引数にした方がいいかも。nilなら設定するような感じ。
  # TODO timezone修正
  scope :daily, -> { where(created_at: Time.current.beginning_of_day...Time.current.end_of_day) }
  scope :weekly, -> { where(created_at: Time.current.ago(7.days).beginning_of_day...Time.current.end_of_day) }
  scope :monthly, -> { where(created_at: Time.current.ago(31.days).beginning_of_day...Time.current.end_of_day) }
end
