Given(/^I am on Discord login page$/) do
  @pages.login.load_home_page
end

And(/^I login as (.*)$/) do |user|
  file = YAML.load_file("config/test_data.yml")
  case user
  when 'user1' then
    $user_manager.current_user = 'user1'
    @pages.login.fill_form(file['user1'])
    sleep 1
  else
    raise "Login error!"
  end

end

And(/^I click on skip the tutorial$/) do 
  if @pages.login.skipButton.visible?
    p "Skip btn is visible"
    click_button('Skip')
  else
    p "skip btn is not visible"
  end
end

Then(/^I see that login was successful$/) do 
  file = YAML.load_file("config/test_data.yml")
  p file['user1']['username']
  @pages.home.userName = file['user1']['username']
  p @pages.home.userName
  p "Usernames match!" if @pages.home.userNameElem.text == @pages.home.userName
  @pages.home.homeButton.visible?
  @pages.home.userSettings.visible?
end