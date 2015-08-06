/class name			:class_name			:class
css selector		:css	 
id					:id	 
link text			:link_text			:link
name				:name	 
partial link text	:partial_link_text	 
tag name			:tag_name	 
xpath				:xpath/

#BROWSER: FIREFOX
require "rubygems"
require "selenium-webdriver"
require 'minitest/autorun'
 browser = Selenium::WebDriver.for :firefox 
  browser.get "http://drd-dev.elasticbeanstalk.com/#/login"
   browser.current_url
	browser.title
		sleep(2)	



browser.find_element(id: "environment-start").click


	#Login screen

	browser.find_element(id: "user-email").send_keys "kelley"
		browser.find_element(id: "user-password").send_keys "test_password"
			browser.find_element(id: "loginFormSubmitBtn").click
		sleep(1)






