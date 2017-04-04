Given(/^User goes to new reference page$/) do
  visit references_new
end

Given(/^User fills Key: M17$/) do
  fill_in('Key', with:'M17')
end

Given(/^User fills Entry type: article$/) do
  fill_in('Entry type', with:'article')
end

Given(/^ User fills Author: Moilanen J.$/) do
  fill_in('Author', with:'Moilanen J.')
end

When(/^User clicks Create Reference"$/) do
  expect{
    click_button('Create Reference')
  }.to change{Reference.count}.by(1)
end

Then(/^Page confirms it"$/) do
  expect(page).to have_content("Listing References")
end
