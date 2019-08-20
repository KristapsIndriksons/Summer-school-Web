class Pages
  attr_accessor :discordpage, :login, :users, :usermanager, :home, :helper

  def initialize
    @login ||= LoginPage.new
    @home ||= HomePage.new
    @helper ||= Helper.new
  end
end