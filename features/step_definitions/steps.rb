Given(/^I am on the "(.*?)" page$/) do |page|
  visit root_path
end

When(/^I search for "(.*?)"$/) do |term|
  fill_in 'query', with: term
  click_on 'Help!'
end

Then(/^needs related to books are returned$/) do
  page.should have_content 'book'
end
