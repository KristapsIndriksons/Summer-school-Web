# Given(/^I am on Discord home page$/) do 

# end

# And(/^I login as user1$/) do 

# end

And(/^I log out from Discord App$/) do 
  @pages.home.userSettings.click
  sleep(1)
  @pages.home.logOutButton.click
  sleep(1)
  @pages.home.logOutConfirm.click
  sleep(1)
end

Then(/^I have successfully logged out$/) do 
 p "You are logged out!" if @pages.login.email.visible? and @pages.login.password.visible?
end
