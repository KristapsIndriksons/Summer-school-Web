require_relative '../../features/pages/base'
# Login page class
class HomePage < BasePage
  attr_accessor :skipButton, :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton, :friendName, :userName, :userNameElem

  def initialize
    @friendName = ''
    @userName = ''

    @homeButton = Element.new(:css,"[aria-label='Home']")

    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")

    @friendTag = Element.new(:xpath,"//span[text()='#{@friendName}']")   

    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")

    @leaveCallButton = Element.new(:xpath,"//*[@id='app-mount']/div[1]/div/div[1]/div/div/div[2]/div[2]/div[2]/div[2]/div/div/div[2]/div[3]/div/div[2]/button[3]/div")
  
    @chatMessageInput = Element.new(:xpath,"//textarea")

    @userSettings = Element.new(:css,"[aria-label='User Settings']")

    @logOutButton = Element.new(:xpath,"//div[text()='Log Out']")

    @logOutConfirm = Element.new(:xpath,"//button[@type='submit']")

    @userNameElem = Element.new(:xpath, "//span[text()='#{@userName}']")
  end

  def load_home_page
    visit ''
  end
end