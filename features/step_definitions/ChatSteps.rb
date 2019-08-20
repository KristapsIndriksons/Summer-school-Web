require_relative '../support/helper_methods.rb'

And(/^I Start a New Chat with "(.*)"$/) do |name|
  @pages.home.update_xpath('friendTag', name)
  if @pages.home.friendTag.get_element
    p "Friend tag visible"
    @pages.home.friendTag.click 
  else
    p "Friend tag invisible"
    @pages.home.friendsTab.click
    @pages.home.allFriends.click
    @pages.home.friendTag.click
  end
end

And(/^I Send a Chat Message with text "(.*)"$/) do |msg|
  @pages.home.chatMessageInput.send_keys(msg)
  @pages.home.chatMessageInput.send_keys(:return)
  sleep(5)
end

Then (/^I clean the direct message list$/) do
  @pages.home.friendsTab.click
  btns = []
  btns = page.all(:xpath, "//button[starts-with(@class, 'close')]")
  puts btns
  # Helper::all
  index = 1
  btns.each do |closeButton|
      find(:xpath, "(//span[starts-with(@class, 'name')])[#{index}]").hover
      find(:xpath, "(//button[starts-with(@class, 'close')])[#{index}]").click
      sleep 1
  end
end 

# comands to run 
# cucumber PLATFORM=valid BROWSER=chrome -t @chat