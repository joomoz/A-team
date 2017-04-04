When(/^User goes to the index reference page$/) do
  visit references?
end

Then(/^Page confirms it"$/) do
  expect(page).to have_content("Listing References")
end


Then(/^Page contains one article"$/) do
  expect(page).to have_content("M17")
end




