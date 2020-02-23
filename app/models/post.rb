class Post < ApplicationRecord
  belongs_to :user
  has_many :answers
  mount_uploader :image, ImageUploader
  validates :theme, presence: true
  validates :image, presence: true
end
