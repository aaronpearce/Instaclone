class Post < ApplicationRecord

	acts_as_votable

	belongs_to :user
 	has_many :comments, dependent: :destroy

	validates :user_id, presence: true
	validates :image, presence: true
	validates :caption, length: { minimum: 3, maximum: 300 }

	has_attached_file :image, styles: { :large => "640x", :medium => "300x", :small => "100x", :thumb => "54x" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	

end
