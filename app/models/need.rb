class Need < ActiveRecord::Base
  
  belongs_to :organization
  has_many :offers

  include PgSearch
  pg_search_scope :search, against: [:description], 
  	using: {tsearch: {dictionary: "english"}}, 
  	associated_against: {organization: [:name, :description]}
  def self.text_search(query)
  	if query.present?
  		search(query)
  	else
  		scoped
  	end
  end
end
