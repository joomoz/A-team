Given(/^User goes to new reference page$/) do

  visit(new_reference_path)

end

Given(/^User fills Key "([^"]*)"$/) do |key|
  fill_in 'Key', :with => key
  click_on 'Create Reference'
end

When(/^User clicks Create Reference$/) do
end

Then(/^Page contains line "([^"]*)"$/) do |line|
  expect(page).to have_content line
end

Then(/^amount of articles has increased by one$/) do
end
