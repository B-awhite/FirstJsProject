class Comment < ApplicationRecord
  belongs_to :beach
  validates :content, presence: true
end
