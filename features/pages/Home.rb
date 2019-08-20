require_relative '../../features/pages/base'

# Home page class
class HomePage < BasePage
  attr_accessor :skipButton, :homeButton, :friendsTab, :friendTag, :voiceCallButton, :logOutConfirm, :allFriends
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton, :friendName, :userName, :userNameElem
  attr_accessor :firstOnlineFriend, :onlineBtn, :privacy_safety, :checkBox, :closeBtn

  @friendName = ''
  @userName = ''
  def initialize

    @homeButton = Element.new(:css,"[aria-label='Home']")

    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")

    # friends tabBar
    @allFriends = Element.new(:xpath,"//div[starts-with(@class, 'tabBar')]/*[2]")
    @onlineBtn = Element.new(:xpath,"//div[starts-with(@class, 'tabBar')]/*[1]")

    @friendTag = Element.new(:xpath,"//span[text()='']") 
  

    @firstOnlineFriend = Element.new(:xpath,"(//div[starts-with(@class,'friendsRow')]/*[1])[1]")

    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")

    @leaveCallButton = Element.new(:xpath,"//div[text()='Leave Call']")
  
    @chatMessageInput = Element.new(:xpath,"//textarea")

    @userNameElem = Element.new(:xpath, "//span[text()='Test537']")
    
    # settings
    @userSettings = Element.new(:css,"[aria-label='User Settings']")
    @privacy_safety = Element.new(:xpath,"//div[text()='Privacy & Safety']")
    # privacy elements
    @checkBox = Element.new(:xpath, "(//label/input[@type='checkbox'])[1]")
    @closeBtn = Element.new(:xpath, "//div[starts-with(@class,'closeButton')]")
    @logOutButton = Element.new(:xpath,"//div[text()='Log Out']")
    @logOutConfirm = Element.new(:xpath,"//button[@type='submit']")

  end

  def load_home_page
    visit ''
  end

  def call(time)
  timeStart = Time.now
  time = time.to_f
  while Time.now - timeStart < time
    p "Talking to the user"
    sleep(2)
  end
  p "Call ended!"
  end

  def update_xpath(var,xpath)
    case var
    when 'friendTag' then @friendTag = Element.new(:xpath,"//span[text()='#{xpath}']")
    when 'checkBox' then @checkBox = Element.new(:xpath,"//div[contains(text(),'#{xpath}')]")
    else
      raise "Login error!"
    end
  end

  def cleanMsg
    btns = []
    btns = page.all(:xpath, "//button[starts-with(@class, 'close')]")
    index = 1
    btns.each do |closeButton|
        find(:xpath, "(//span[starts-with(@class, 'name')])[#{index}]").hover
        find(:xpath, "(//button[starts-with(@class, 'close')])[#{index}]").click
        sleep 1
    end
  end

end