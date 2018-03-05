class Topic < ApplicationRecord
  extend FriendlyId
  friendly_id :name, :use => :history
  has_many :posts
end
