Given(/^I am signed in$/) do 
  step 'I am on Discord login page'
  step 'I login as user1'
  step 'I click on skip the tutorial'
  step 'I see that login was successful'
end

Given(/^I Start a New Chat with first online$/) do
  @pages.home.friendsTab.click
  @pages.home.onlineBtn.click
  @pages.home.firstOnlineFriend.click
end

# send msg to first online

When(/^I click on settings$/) do
  @pages.home.userSettings.click
  expect(page).to have_xpath("//div[contains(.,'User Settings')]")
end

And(/^I click privacy&safety$/) do
  @pages.home.privacy_safety.click
  expect(page).to have_xpath("//h2[contains(.,'Privacy & Safety')]")
end

And(/^I check "(.*)"$/) do |input|
  @pages.home.update_xpath('checkBox',input)
  @pages.home.checkBox.click
  sleep(1)
end

Then(/^I click esc$/) do
  @pages.home.closeBtn.click
  p expect(page).to have_css("[aria-label='Home']")
  sleep(1)
end

