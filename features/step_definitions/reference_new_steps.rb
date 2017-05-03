
  Given(/^User goes to a new manual page$/) do
    visit "/"
    click_on "New Manual"
  end

  Given(/^User goes to the index reference pagee$/) do
    visit "/"
  end

  Given(/^User goes to new techreport page$/) do
    visit "/"
    click_on "New Techreport"
  end

  Given(/^User fills Title "([^"]*)", Key "([^"]*)"$/) do |title, key|
    fill_in 'Title', :with => title
    fill_in 'Key', :with => key
  end

  And(/^User fills Author "([^"]*)", Title "([^"]*)", Institution "([^"]*)", Year (\d+), Key "([^"]*)"$/) do |author,title, institution, year, key|
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
    fill_in 'Institution', :with => institution
    fill_in 'Year', :with => year
    fill_in 'Key', :with => key
  end

  When(/^User clicks Create Manual$/) do
    @n = Reference.count
    click_on 'Create Manual'
  end

  When(/^User clicks Create Techreport$/) do
    @n = Reference.count
    click_on 'Create Techreport'
  end

  Then(/^Page contains text "([^"]*)"$/) do |text|
    expect(page).to have_content text
  end

# Crazy amount of generic steps
Given(/^User fills Title "([^"]*)"$/) do |title|
  fill_in 'Title', :with => title
end

Given(/^User goes to new booklet page$/) do
    visit "/"
    click_on "New Booklet"
end

When(/^User clicks Create Booklet$/) do
    @n = Reference.count
    click_on 'Create Booklet'
end

Given(/^User goes to new conference page$/) do
    visit "/"
    click_on "New Conference"
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)", Booktitle "([^"]*)", Year (\d+)$/) do |author, title, book, year|
fill_in 'Author', :with => author
fill_in 'Title', :with => title
fill_in 'Booktitle', :with => book
fill_in 'Year', :with => year
end

When(/^User clicks Create Conference$/) do
    @n = Reference.count
    click_on 'Create Conference'
end

Given(/^User goes to new inbook page$/) do
    visit "/"
    click_on "New Inbook"
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)", Pages "([^"]*)", Publisher "([^"]*)", Year (\d+)$/) do |author, title, pages, publisher, year|
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
    fill_in 'Pages', :with => pages
    fill_in 'Publisher', :with => publisher
    fill_in 'Year', :with => year
end

When(/^User clicks Create Inbook$/) do
    @n = Reference.count
    click_on 'Create Inbook'
end

Given(/^User goes to new incollection page$/) do
    visit "/"
    click_on "New Incollection"
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)", Booktitle "([^"]*)", Publisher "([^"]*)", Year (\d+)$/) do |author, title, book, publisher, year|
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
    fill_in 'Booktitle', :with => book
    fill_in 'Publisher', :with => publisher
    fill_in 'Year', :with => year
end

When(/^User clicks Create Incollection$/) do
    @n = Reference.count
    click_on 'Create Incollection'
end

Given(/^User goes to new mastersthesis page$/) do
    visit "/"
    click_on "New Masters thesis"
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)", School "([^"]*)", Year (\d+)$/) do |author, title, school, year|
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
    fill_in 'School', :with => school
    fill_in 'Year', :with => year
end

When(/^User clicks Create Mastersthesis$/) do
    @n = Reference.count
    click_on 'Create Mastersthesis'
end

Given(/^User goes to new misc page$/) do
    visit "/"
    click_on "New misc"
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)"$/) do |author, title|
    fill_in 'Author', :with => author
    fill_in 'Title', :with => title
end

When(/^User clicks Create Misc$/) do
    @n = Reference.count
    click_on 'Create Misc'
end

Given(/^User goes to new phdthesis page$/) do
    visit "/"
    click_on "New Ph.D. thesis"
end

When(/^User clicks Create Phdthesis$/) do
    @n = Reference.count
    click_on 'Create Phdthesis'
end

Given(/^User goes to new proceedings page$/) do
    visit "/"
    click_on "New Proceeding"
end

Given(/^User fills Title "([^"]*)", Year (\d+)$/) do |title, year|
    fill_in 'Title', :with => title
    fill_in 'Year', :with => year
end

When(/^User clicks Create Proceedings$/) do
    @n = Reference.count
    click_on 'Create Proceeding'
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)", Institution "([^"]*)", Year (\d+)$/) do |author, title, institution, year|
  fill_in 'Author', :with => author
  fill_in 'Title', :with => title
  fill_in 'Institution', :with => institution
  fill_in 'Year', :with => year
end

Given(/^User goes to new unpublished page$/) do
    visit "/"
    click_on "New Unpublished"
end

Given(/^User fills Author "([^"]*)", Title "([^"]*)", Note "([^"]*)"$/) do |author, title, note|
  fill_in 'Author', :with => author
  fill_in 'Title', :with => title
  fill_in 'Note', :with => note
end

When(/^User clicks Create Unpublishded$/) do
    @n = Reference.count
    click_on 'Create Unpuplished'
end
