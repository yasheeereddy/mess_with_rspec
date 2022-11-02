class Category < ApplicationRecord
    validates :category, presence: true 
    has_many :tasks
    validates_uniqueness_of :category
end
