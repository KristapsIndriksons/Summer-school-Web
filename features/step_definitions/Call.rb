# Given(/^I am on Discord home page$/) do 

# end

# And(/^I login as user1$/) do 

# end

# And(/^I Start a New Chat$/) do 

# end

And(/^I Start a (.*) Second Voice Call$/) do |time|
  @pages.home.voiceCallButton.click
  @pages.home.call(time)
end
