class Post < ApplicationRecord
	validates :user_id, presence: true
	validates :image, presence: true
	belongs_to :user

  has_attached_file :image, styles: { :large => "640x", :medium => "300x", :small => "100x", :thumb => "54x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  post = Post.first

  has_many :comments, dependent: :destroy

end
