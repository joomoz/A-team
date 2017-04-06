Given(/^User goes to new reference page$/) do
  /
  visit(new_reference_path)
/
end

Given(/^User fills Key "([^"]*)"$/) do |key|
  key
end

When(/^User clicks Create Reference$/) do
end

Then(/^Page contains line "([^"]*)"$/) do |line|
  line
end

Then(/^amount of articles has increased by one$/) do
end
