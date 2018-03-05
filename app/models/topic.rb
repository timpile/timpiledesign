class Topic < ApplicationRecord
  extend FriendlyId
  friendly_id :name, :use => :history
end
