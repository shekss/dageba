Given(/^Amazon\.co\.uk is open$/) do
  visit ("https://www.amazon.co.uk")
end

When(/^I click Sign\-in$/) do
  click_on('Sign in')
end

And(/^enter valid user name password$/) do
  fill_in('ap_email', :with => 'beck.danny45@yahoo.com')
  fill_in('ap_password', :with => 'Password1')
end

Then(/^I am logged in$/) do
  click_button('signInSubmit')
  sleep 10
end

Given(/^when I search for "([^"]*)"$/) do |text|
  fill_in('twotabsearchtextbox', :with => text)
end

When(/^the search results are displayed$/) do
  click_on('Go')
end

Then(/^the first result has the word "([^"]*)" in it$/) do |chromecast|
  expect(page).to have_content(chromecast)
end

Given(/^I add "([^"]*)" to my basket$/) do |arg|
  fill_in('twotabsearchtextbox', :with => arg)
  click_on('Go')
  click_link('Chromecast USB Cable')
  click_button('Add to Basket')
end

When(/^I check my basket total$/) do
  click_on('nav-cart')
end

Then(/^it should match the price of "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end
