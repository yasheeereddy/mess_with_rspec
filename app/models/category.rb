class Category < ApplicationRecord
    validates :category, presence: true
    has_many :tasks
end
