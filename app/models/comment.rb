class Comment < ActiveRecord::Base

#validates presence: true, length: { minimum: 10, maximum: 100 }

	belongs_to :post
	belongs_to :user

end
