class Post < ApplicationRecord
  enum status: { draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, :use => :history

  mount_uploader :thumb_image, ImageUploader
  mount_uploader :main_image, ImageUploader

  belongs_to :user
  belongs_to :topic
  has_many :comments
end
