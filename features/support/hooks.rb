require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
Capybara.default_driver = :selenium

Before do
  #driver = browser
  #driver.cookies.clear
  #Capybara.default_driver = driver
end

After do
  driver.quit
end