class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/:style/blank_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: { maximum: 25, minimum: 8 }

  has_many :posts
  has_many :comments
  has_one :profile

end
