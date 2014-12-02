class Listing < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "no_image.jpg"
  #validates_attachment_content_type :image, :content_type => /\Aimage/
  #validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  #validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /jpg\Z/, /gif\Z/]
  #validates_attachment_content_type :image, content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)/
  #do_not_validate_attachment_file_type :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
