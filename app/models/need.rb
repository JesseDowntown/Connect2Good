class Need < ActiveRecord::Base
  
  belongs_to :organization
  has_many :offers
end
