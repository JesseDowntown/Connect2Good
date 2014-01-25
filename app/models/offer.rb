class Offer < ActiveRecord::Base
  belongs_to :donor,
    class_name: 'User',
    foreign_key: 'donor_id' 
  belongs_to :need
  belongs_to :organization
  validates :email, presence: true, :if => :signed_in?
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :if => :signed_in?
 
  mount_uploader :image, ImageUploader
 
  def signed_in?
    donor_id.present? == false 
  end
end