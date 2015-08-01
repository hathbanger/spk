class Trick < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	belongs_to :spot
	has_many :comments
	has_attached_file :image, styles: { medium: "450x450#{}", small: "200x200>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
