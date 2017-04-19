When(/^User goes to the index reference page$/) do
  visit "/"
end

Then(/^Page contains line "([^"]*)" $/) do |line|
  expect(page).to have_content line
end


Given(/^I have articles titled "([^"]*)"$/) do |titles|
  titles.split(',').each do |title|
    Article.create(:title => title, :key => "key", :author => "author", :year => 2000, :journal => "journal", :volume => "volume")
  end
end

Given(/^I have references titled "([^"]*)"$/) do |titles|
    titles.split(',').each do |title|
        Article.create(:title => title, :key => "key", :author => "author", :year => 2000, :journal => "journal", :volume => "volume")
    end
end

When(/^Clicks "([^"]*)" reference titled "([^"]*)"$/) do |link, title|
  visit "/"
  click_link(link, match: :first)
  #click_on link
end

Then(/^Page does not contain line "([^"]*)"$/) do |line|
  expect(page).not_to have_content line
end
