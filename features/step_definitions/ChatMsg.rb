And(/^I Start a New Chat$/) do 
  @pages.home.friendTag.click
end

And(/^I Send a Chat Message with text (.*)$/) do |msg|
  @pages.home.chatMessageInput.send_keys(msg)
  @pages.home.chatMessageInput.send_keys(:return)
  sleep(5)
end


# comands to run 
# cucumber PLATFORM=valid BROWSER=chrome -t @chat