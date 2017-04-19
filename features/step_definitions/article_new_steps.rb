
Given(/^User goes to new article page$/) do
  visit "/"
  click_on "New Article"
end

Given(/^User fills Key "([^"]*)", Author "([^"]*)", Title "([^"]*)", Journal "([^"]*)", Year (\d+) and Volume (\d+)$/) do |key, author, title, journal, year, volume|
  fill_in 'Key', :with => key
  fill_in 'Author', :with => author
  fill_in 'Title', :with => title
  fill_in 'Journal', :with => journal
  fill_in 'Year', :with => year
  fill_in 'Volume', :with => volume
end

Given(/^User fills Key "([^"]*)", Author "([^"]*)", Title "([^"]*)", Year (\d+), Publisher "([^"]*)"$/) do |key, author, title, year, publisher|
    fill_in 'Key', :with => key
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
    fill_in 'Year', :with => year
    fill_in 'Publisher', :with => publisher
end


Given(/^User fills Key "([^"]*)", Author "([^"]*)", Title "([^"]*)", Year (\d+), Booktitle "([^"]*)"$/) do |key, author, title, year, booktitle|
    fill_in 'Key', :with => key
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
    fill_in 'Year', :with => year
    fill_in 'Booktitle', :with => booktitle
end

And(/^User fills Key "([^"]*)"$/) do |key|
  fill_in 'Key', :with => key
end

When(/^User clicks Create Article$/) do
    @n = Reference.count
  click_on 'Create Article'
end

Then(/^Page contains line "([^"]*)"$/) do |line|
  expect(page).to have_content line
end

Then(/^The amount of articles has increased by one$/) do
    m = Reference.count
    expect(m).to eq(@n+1)
end

Given(/^User goes to "([^"]*)" page$/) do |entryType|
    visit "/"
    click_on entryType
end

Given(/^User fills Key "([^"]*)", Author "([^"]*)"$/) do |key, author|
    fill_in 'Key', :with => key
    fill_in 'Author', :with => author
end

When(/^User clicks "([^"]*)"$/) do |create|
    @n = Reference.count
    click_on create
end
