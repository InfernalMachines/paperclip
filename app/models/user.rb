class User < ActiveRecord::Base

	has_attached_file :pictures, :styles => { :small => "300x300>", :thumb => "1000x1000>"}, :default_url => "/images/:style/missing.jpg"
  validates_attachment_content_type :pictures, :content_type => /\Aimage\/.*\Z/
end
