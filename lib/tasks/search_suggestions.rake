namespace :search_suggestions do 
  desc "Generate search suggestions from needs"
  task index: :environment do
    SearchSuggestion.index_needs
  end
end