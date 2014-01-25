class Offer < ActiveRecord::Base
  belongs_to :donor,
    class_name: 'User',
    foreign_key: 'donor_id' 
  belongs_to :need
  belongs_to :organization
  validates :email, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, one: :create

  mount_uploader :image, ImageUploader
end
