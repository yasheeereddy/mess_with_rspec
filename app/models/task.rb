class Task < ApplicationRecord
    validates :name, presence: true
    #belongs_to :category
    belongs_to :user
end
