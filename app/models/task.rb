class Task < ApplicationRecord
    validates :name, presence: true
    belongs_to :category, optional: true
    belongs_to :user
end
