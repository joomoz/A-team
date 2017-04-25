
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
