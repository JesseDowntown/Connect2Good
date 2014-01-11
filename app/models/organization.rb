class Organization < ActiveRecord::Base
  belongs_to :owner,
    class_name: 'User',
    foreign_key: 'owner_id'

  has_many :needs
  has_many :offers
end
