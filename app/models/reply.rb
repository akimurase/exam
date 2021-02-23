class Reply < ApplicationRecord
  belongs_to :comments, optional: true
end
