When(/^User goes to the index reference page$/) do

  visit "/"

end

Then(/^Page contains line "([^"]*)" $/) do |line|
  expect(page).to have_content line
end

Given(/^I have articles titled "([^"]*)"$/) do |titles|
  titles.split(',').each do |title|
    Reference.create(:title => title)
  end
end
