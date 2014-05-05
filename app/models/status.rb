class Status < ActiveRecord::Base

  belongs_to :wound
  belongs_to :patient
  
  has_attached_file :image, 
  	:storage => :s3,
  	:bucket => ENV['AWS_BUCKET'],
    :s3_credentials => {
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    },
  	:style => {
  	thumb: '150x150>',
  	medium: '300x300>'},
  	:path => "app/public/system/images/:id/:style/:basename.:extension"



  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
