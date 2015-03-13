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
 browser = Selenium::WebDriver.for :firefox
  browser.get "http://drd-dev.elasticbeanstalk.com/#/login"
   browser.current_url
	browser.title

	#Login screen

	browser.find_element(id: "user-email").send_keys "josh"
		browser.find_element(id: "user-password").send_keys "test_password"
			browser.find_element(id: "loginFormSubmitBtn").click
		sleep(1)


#Home page
	#Enters new historical case
		browser.find_element(xpath: "/html/body/div/section[2]/div/article[1]/div/a[1]").click
		

browser.close


