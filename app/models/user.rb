class User < ApplicationRecord
	has_many :posts
	has_many :comments
	has_many :likes
	has_many :replies
	has_many :comment_posts

end
