
Given(/^user goes to the index reference page$/) do
  visit "/"
end

Given(/^first creates one reference$/) do
  click_on "New Article"
  fill_in 'Key', :with => "key"
  fill_in 'Author', :with => "author"
  fill_in 'Title', :with => "title"
  fill_in 'Journal', :with => "journal"
  fill_in 'Year', :with => 2000
  fill_in 'Volume', :with => 12
  click_on 'Create Article'
end

When(/^User clicks Destroy$/) do
  click_on 'Destroy'
end
