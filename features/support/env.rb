require 'rspec/expectations'
require 'selenium-webdriver'

APP_PATH = '../../TiCucumberAppium/build/iphone/build/Products/Debug-iphonesimulator/TiCucumberAppium.app'.freeze

def capabilities
  {
    'platformName' => 'iOS',
    'deviceName' => 'iPhone 7',
    'platformVersion' => '10.3',
    'automationName' => 'XCUITest',
    'app' => absolute_app_path
  }
end

def absolute_app_path
  File.join(File.dirname(__FILE__), APP_PATH)
end

def server_url
  'http://127.0.0.1:4723/wd/hub'
end

def selenium
  @driver ||= Selenium::WebDriver.for(:remote, desired_capabilities: capabilities, url: server_url)
end
