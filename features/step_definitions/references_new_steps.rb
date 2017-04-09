Given(/^User goes to new reference page$/) do
  visit(new_reference_path)
end

And(/^User fills Key "([^"]*)"$/) do |key|
  fill_in 'Key', :with => key
end

When(/^User clicks Create Reference$/) do
  click_on 'Create Reference'
end

Then(/^Page contains line "([^"]*)"$/) do |line|
  expect(page).to have_content line
end

Then(/^User clicks Create Reference and amount of articles has increased by one$/) do
  n = Reference.count
  expect{
    click_on "Create Reference"
  }.to change{Reference.count}.from(n).to(n+1)
end
