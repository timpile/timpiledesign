class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, :use => :history
  belongs_to :user
  belongs_to :topic
end
