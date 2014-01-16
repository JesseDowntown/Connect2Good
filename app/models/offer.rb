class Offer < ActiveRecord::Base
  belongs_to :donor,
    class_name: 'User',
    foreign_key: 'donor_id' 
  belongs_to :need
  belongs_to :organization

  mount_uploader :image, ImageUploader
end

