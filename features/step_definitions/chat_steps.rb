Given(/^I am on the chat page$/) do
  visit "/"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

Then('I enter {string} as chat message') do |string|
  page.fill_in('chat_input', with: string)
end

Then('I click {string} button') do |string|
  page.find(string).click
end


Then('I should have timestamp') do
  page.has_content?('UTC')
end