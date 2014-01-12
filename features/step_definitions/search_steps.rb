When(/^I search for "(.*?)"$/) do |term|
  fill_in 'query', with: term
  click_on 'Search'
end

Then(/^needs related to books are returned$/) do
  page.should have_content 'book'
end
