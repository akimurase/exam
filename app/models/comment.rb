class Comment < ApplicationRecord
  has_many :reply, dependent: :destroy
  belongs_to :user
end
