class Trick < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	belongs_to :spot
	has_many :comments
	has_attached_file :image, styles: { medium: '400x400', small: '150x150' }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	crop_attached_file :image
  	acts_as_taggable # Alias for acts_as_taggable_on :tags
    acts_as_taggable_on :skills, :interests
end
