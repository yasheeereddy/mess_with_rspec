class User < ApplicationRecord
    validates :username, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    validates_uniqueness_of :username, :email
    has_secure_password
    has_many :tasks
end
