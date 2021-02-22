class Comment < ApplicationRecord
  has_many :reply
  belongs_to :user
end
