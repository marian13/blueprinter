# frozen_string_literal: true

##
# - https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
#
require "selenium-webdriver"

##
# - https://www.valerieburzynski.com/blog/how-to-get-your-capybara-system-tests-running-in-a-docker-dev-container-on-apple-silicon
# - https://www.plymouthsoftware.com/articles/rails-on-docker-system-specs-in-containers-with-rspec-capybara-chrome-and-selenium
#
Capybara.server_port = ENV.fetch("TURNIP_RAILS_PORT")
Capybara.server_host = IPSocket.getaddress(Socket.gethostname)
Capybara.app_host = "http://#{IPSocket.getaddress(Socket.gethostname)}:#{Capybara.server_port}"

##
# https://stackoverflow.com/questions/61413196/how-to-run-capybara-tests-using-selenium-chrome-in-a-dockerised-rails-environm
#
Capybara.register_driver :docker_selenium_chrome do |app|
  args = [
    '--window-size="1280,800"',
    "--whitelisted-ips=#{Capybara.server_host}"
  ]

  # require "debug"; binding.break

  ##
  # - https://www.rubydoc.info/gems/selenium-webdriver/4.19.0/Selenium/WebDriver/Chromium/Options
  # - https://stackoverflow.com/a/75394975/12201472
  #
  options = Selenium::WebDriver::Chrome::Options.new

  ##
  # - https://www.rubydoc.info/gems/selenium-webdriver/4.19.0/Selenium/WebDriver/Chromium/Options#add_argument-instance_method
  #
  options.add_argument("window-size=\"1280,800\"")
  options.add_argument("whitelisted-ips=#{Capybara.server_host}")

  driver = Capybara::Selenium::Driver.new(
    app,
    browser: :remote,

    ##
    # NOTE: Driver connects directly to container, this is why port is hardcoded.
    #
    url: "http://chrome:4444/wd/hub",
    options: options
  )

  driver
end

Capybara.default_driver = :docker_selenium_chrome

puts "[Turnip] Capybara driver initializer loaded"
