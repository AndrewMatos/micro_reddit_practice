class User < ApplicationRecord
	validates :username, :email , presence: true, length: {in: 6..50}, uniqueness: {case_sensitive: false}
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates(:email , length: {in: 2..90}, format: {with: EMAIL_REGEX})
	validates(:password, presence: true, length: {minimum: 5})
	has_secure_password
	has_many :posts
	has_many :comments
end
