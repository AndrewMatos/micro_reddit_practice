class Post < ApplicationRecord
	validates :title, presence: true, length: {in: 1..90}

	belongs_to :user
	has_many :comments
end
