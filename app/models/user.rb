class User < ActiveRecord::Base
  has_merit

  include Merit
  has_merit
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
   has_many :tricks
   has_many :comments
   acts_as_followable
   acts_as_follower
    has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
