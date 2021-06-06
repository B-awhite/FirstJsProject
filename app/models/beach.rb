class Beach < ApplicationRecord
    has_many :comments
    validates :name, presence: true
    validates :country, presence: true
end
