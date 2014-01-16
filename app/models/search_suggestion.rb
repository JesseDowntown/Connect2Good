class SearchSuggestion < ActiveRecord::Base
  
  def self.terms_for(prefix)
    suggestions = where("term like ?", "#{prefix}_%")
    suggestions.order("popularity desc").limit(5).pluck(:term)
  end

  def self.index_needs
    Need.find_each do |need|
      need.description.split.each { |t| index_term(t) }
    end
  end

  def self.index_term(term)
    where(term: term.downcase).first_or_initialize.tap do |suggestion|
      suggestion.increment! :popularity
    end
  end

end
