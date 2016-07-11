class Post < ActiveRecord::Base

#before_create :generate_random_id

has_attached_file :image, styles: { medium: "800x250>", thumb: "50x50#", thumb2: "242x200#" }, default_url: "/images/:style/blank_avatar.png"

validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

validates :title, presence: true, length: { minimum: 10, maximum: 100 }
validates :body, presence: true, length: { minimum: 20, maximum: 10000 }

	belongs_to :user
	has_many :comments, dependent: :destroy
	

private
	def generate_random_id
		self.id = SecureRandom.uuid
	end


end
