class Offer < ActiveRecord::Base
  belongs_to :donor,
    class_name: 'User',
    foreign_key: 'donor_id'
  
  belongs_to :need
  belongs_to :organization
end

id | status   | donor_id | organizatio... | created_at     | updated_at     | need_id | image          | description