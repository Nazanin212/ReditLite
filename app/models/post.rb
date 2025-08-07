class Post < ApplicationRecord
  validates :url, presence: true
  validates :title, presence: true

  belongs_to :user
  has_many :comments
end
