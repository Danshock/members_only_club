class Post < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, length: { maximum: 240 }
end
