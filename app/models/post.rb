class Post < ApplicationRecord
  enum status: { draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, :use => :history
  belongs_to :user
  belongs_to :topic
end
