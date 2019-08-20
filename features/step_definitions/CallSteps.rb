
And(/^I Start a (.*) Second Voice Call$/) do |time|
  @pages.home.voiceCallButton.click
  @pages.home.call(time)
  @pages.home.leaveCallButton.click
end
