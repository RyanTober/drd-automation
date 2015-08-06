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
  browser.get "https://app.disputeresolutiondata.com/#/login"
   browser.current_url
	browser.title
		sleep(2)

	#Login screen

	browser.find_element(id: "user-email").send_keys "josh"
		browser.find_element(id: "user-password").send_keys "test_password"
			browser.find_element(id: "loginFormSubmitBtn").click
		sleep(1)


#Home page
	#Enters new historical case.
		browser.find_element(xpath: "/html/body/div/section[2]/div/article[1]/div/a[1]").click

		sleep(2)

#1st drop Down
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/button").click
				#Used "Unique Selector" for css
		#browser.find_element(css: "div.ui-select-choices-row:nth-child(4)").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/input[1]").send_keys "ae"
			 browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/input[1]").send_keys :return

#2nd drop Down (other)

		browser.find_element(css: "div.intake-section:nth-child(2) > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(17) > a:nth-child(1) > div:nth-child(1)").click
#*Broken*Text box for "other" currency response
		browser.find_element(css: "div.intake-section:nth-child(2) > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > label:nth-child(2) > input:nth-child(1)").send_keys "Gold Bars"

#Select Mediation Radio Button
browser.find_element(css: ".error > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > label:nth-child(1) > span:nth-child(2)").click

#"Method of Mediation Selection" Dropdown
	browser.find_element(css: "div.intake-section:nth-child(3) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(5) > a:nth-child(1) > div:nth-child(1)").click
#"How many paties were involved in the case" Dropdown [3]
	browser.find_element(css: "div.intake-section:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(css: "div.ui-select-choices-row:nth-child(5) > a:nth-child(1) > div:nth-child(1)").click

	#Party location choices for [3]
		#Geogrphic Region of #1
		browser.find_element(css: "div.intake-section:nth-child(3) > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(4) > a:nth-child(1) > div:nth-child(1)").click
			#Party 1 Country
			browser.find_element(css: "div.intake-section:nth-child(3) > div:nth-child(3) > div:nth-child(4) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(css: "div.ui-select-choices-row:nth-child(8) > a:nth-child(1) > div:nth-child(1)").click
		#Geogrphic Region of #2
		browser.find_element(css: "div.intake-section:nth-child(3) > div:nth-child(3) > div:nth-child(5) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(6) > a:nth-child(1) > div:nth-child(1)").click
			#Party 2 Country
			browser.find_element(css: "div.row:nth-child(6) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(css: "div.ui-select-choices-row:nth-child(6) > a:nth-child(1) > div:nth-child(1)").click
		#Geogrphic Region of #3
		browser.find_element(css: "div.row:nth-child(7) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(10) > a:nth-child(1) > div:nth-child(1)").click
			#Party 3 Country
			browser.find_element(css: "div.row:nth-child(8) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(css: "div.ui-select-choices-row:nth-child(12) > a:nth-child(1) > div:nth-child(1)").click
#Case Date info
	#"Date of Mediation Request"
		#Month
	browser.find_element(css: "div.row:nth-child(29) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(css: "div.ui-select-choices-row:nth-child(4) > a:nth-child(1) > div:nth-child(1)").click
			#Day
		browser.find_element(css: "div.row:nth-child(29) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(20) > a:nth-child(1) > div:nth-child(1)").click
				#Year
			browser.find_element(css: "div.row:nth-child(29) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(css: "div.ui-select-choices-row:nth-child(13) > a:nth-child(1) > div:nth-child(1)").click
	#"Date Mediation confrence BEGAN"
			#Month
	browser.find_element(css: "div.row:nth-child(30) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(css: "div.ui-select-choices-row:nth-child(5) > a:nth-child(1) > div:nth-child(1)").click
				#Day
		browser.find_element(css: "div.row:nth-child(30) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(17) > a:nth-child(1) > div:nth-child(1)").click
				#Year
			browser.find_element(css: "div.row:nth-child(30) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(css: "div.ui-select-choices-row:nth-child(9) > a:nth-child(1) > div:nth-child(1)").click
	#"Date Mediation confrence CONCLUDED"
			#Month
	browser.find_element(css: "div.row:nth-child(31) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(css: "div.ui-select-choices-row:nth-child(6) > a:nth-child(1) > div:nth-child(1)").click
				#Day
		browser.find_element(css: "div.row:nth-child(31) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(css: "div.ui-select-choices-row:nth-child(14) > a:nth-child(1) > div:nth-child(1)").click
				#Year
			browser.find_element(css: "div.row:nth-child(31) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(css: "div.ui-select-choices-row:nth-child(5) > a:nth-child(1) > div:nth-child(1)").click

	#Total Insitutional Fees (if applicable)
browser.find_element(css: "div.row:nth-child(32) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)").send_keys "34522"
	#Total Mediator Fees (if applicable)
browser.find_element(css: "div.row:nth-child(33) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > input:nth-child(1)").send_keys "4255222559"


			 #:down_arrow

#Next Button
		browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div.intake-actions > button").click
		sleep(2)

#Submit Button
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/div[2]/a").click
		sleep(2)

		browser.find_element(css: "button.btn").click

		sleep(4)

#Close Browser
	browser.close


