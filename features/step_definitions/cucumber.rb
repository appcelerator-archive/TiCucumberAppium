
Given(/^I have App running with Appium$/) do
  # Make sure you have started appium server
end

Then(/^I should click on tab two$/) do
  selenium.find_element(:id, 'Tab 2').click
end

Then(/^check that the window has shifted$/) do
  selenium.find_element(:id, 'I am Window 2')
end
