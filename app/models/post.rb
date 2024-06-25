class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 5 }
  def to_param
    "#{id}-#{title}"
  end
  end