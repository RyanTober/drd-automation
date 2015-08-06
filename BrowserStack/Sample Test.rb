/class name			:class_name			:class
css selector		:css	 
id					:id	 
link text			:link_text			:link
name				:name	 
partial link text	:partial_link_text	 
tag name			:tag_name	 
xpath				:xpath/


require 'rubygems'
require 'selenium-webdriver'

# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
caps['browser'] = 'IE'
caps['browser_version'] = '9.0'
caps['os'] = 'Windows'
caps['os_version'] = '7'
caps['resolution'] = '1024x768'

driver = Selenium::WebDriver.for(:remote,
  :url => "http://drdsparc1:bBwHzGJs9tS35pVVzt2U@hub.browserstack.com/wd/hub",
  :desired_capabilities => caps)
driver.navigate.to "http://www.google.com/ncr"
element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit
puts driver.title
driver.quit
