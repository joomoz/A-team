When(/^User enters name "([^"]*)" and clicks "([^"]*)"$/) do |name, button|
  fill_in 'bibtex_name', :with => name
  form_action = find('#new_bibtex')['action']
  click_on button
end

When(/^Selects the download location the project root$/) do

end

Then(/^The project root contains a Bibtex file named "([^"]*)"$/) do |arg1|

end
