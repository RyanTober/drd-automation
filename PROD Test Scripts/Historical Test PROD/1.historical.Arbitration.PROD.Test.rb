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
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/input[1]").send_keys "ba"
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/input[1]").send_keys :return

#2nd drop Down (other)

		browser.find_element(css: "div.intake-section:nth-child(2) > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/ul/li/div[9]/a/div").click
#*Broken*Text box for "other" currency response
	#browser.find_element(css: "div.intake-section:nth-child(2) > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
	#browser.find_element(css: "div.ui-select-choices-row:nth-child(17) > a:nth-child(1) > div:nth-child(1)").click
		#browser.find_element(css: "div.intake-section:nth-child(2) > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > label:nth-child(2) > input:nth-child(1)").send_keys "Gold Bars"

#Select Arbitration Radio Button
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div/label[2]/span").click

#"Number of Arbitrators"
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[5]/a/div").click

#"Was the case settled"
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[2]/div[2]/div/div/div/label[1]/span").click

	#"Date Settled"
		#Month
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[1]/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[1]/input[1]").send_keys "f"
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[1]/input[1]").send_keys :return

		#Day
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[2]/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[2]/input[1]").send_keys "28"
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[2]/input[1]").send_keys :return

		#Year
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[3]/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[3]/input[1]").send_keys "2015"
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div[3]/input[1]").send_keys :return

#"Was the case withdrawn"
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[4]/div[2]/div/div/div/label[2]/span").click

#Date of Demand
	#Month
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(5) > div.intake-question-list > div > div:nth-child(2) > div > div > div.ui-select-date.ui-select-month.ui-select-scroll.ui-select-container.ui-select-bootstrap.dropdown.ng-valid > div > button").click
	browser.find_element(css: "div.ui-select-choices-row:nth-child(13) > a:nth-child(1) > div:nth-child(1)").click
#Day
	browser.find_element(css: "div.intake-section:nth-child(5) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[4]/div[2]/div/div[2]/div/div/div[2]/input[1]").send_keys "31"
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[4]/div[2]/div/div[2]/div/div/div[2]/input[1]").send_keys :return

#Year
	browser.find_element(css: "div.intake-section:nth-child(5) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[4]/div[2]/div/div[2]/div/div/div[3]/input[1]").send_keys "2005"
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[4]/div[2]/div/div[2]/div/div/div[3]/input[1]").send_keys :return

#Demand Type
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[5]/div[2]/div[1]/div[2]/div/div/div/label[1]/span").click
		#Demand Amount
		browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(6) > div.intake-question-list > div.row.ng-scope.warn > div:nth-child(2) > div > div > input").send_keys "54399"
#Was a counterclaim filed for this case?
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[6]/div[2]/div[1]/div[2]/div/div/div/label[1]/span").click
		#counterclaim demand type
		browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(7) > div.intake-question-list > div:nth-child(2) > div:nth-child(2) > div > div > div > label:nth-child(1) > span").click
		#Counterclaim demand amount
		browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(7) > div.intake-question-list > div:nth-child(3) > div:nth-child(2) > div > div > input").send_keys "700"
		#Did the counterclaim prevail?
		browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(7) > div.intake-question-list > div:nth-child(4) > div:nth-child(2) > div > div > div > label:nth-child(1) > span").click
		#Counterclaim award amount
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[6]/div[2]/div[5]/div[2]/div/div/input").send_keys "650"

#Date of Award
	#Month
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(8) > div.intake-question-list > div:nth-child(1) > div:nth-child(2) > div > div > div.ui-select-date.ui-select-month.ui-select-scroll.ui-select-container.ui-select-bootstrap.dropdown.ng-valid > div > button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[7]/div[2]/div[1]/div[2]/div/div/div[1]/input[1]").send_keys "Aug"
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[7]/div[2]/div[1]/div[2]/div/div/div[1]/input[1]").send_keys :return
	#Day
	browser.find_element(css: "div.intake-section:nth-child(8) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[7]/div[2]/div[1]/div[2]/div/div/div[2]/input[1]").send_keys "31"
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[7]/div[2]/div[1]/div[2]/div/div/div[2]/input[1]").send_keys :return

	#Year
	browser.find_element(css: "div.intake-section:nth-child(8) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[7]/div[2]/div[1]/div[2]/div/div/div[3]/input[1]").send_keys "2015"
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[7]/div[2]/div[1]/div[2]/div/div/div[3]/input[1]").send_keys :return

	#Prevailing Party
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(8) > div.intake-question-list > div:nth-child(2) > div:nth-child(2) > div > div > div > div > button").click
	browser.find_element(css: ".open > input:nth-child(2)").send_keys "r"
	browser.find_element(css: ".open > input:nth-child(2)").send_keys :return

	#Amounts Awarded to
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(8) > div.intake-question-list > div:nth-child(3) > div:nth-child(2) > div > div > div > div > button").click
	browser.find_element(css: ".open > input:nth-child(2)").send_keys "b"
	browser.find_element(css: ".open > input:nth-child(2)").send_keys :return

#Amount of Award - Claimant
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(8) > div.intake-question-list > div:nth-child(4) > div:nth-child(2) > div > div > input").send_keys "432"
#Amount of Award - Respondent
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div:nth-child(8) > div.intake-question-list > div:nth-child(5) > div:nth-child(2) > div > div > input").send_keys "234"

#NEXT Botton
	browser.find_element(css: ".btn-primary").click
sleep(2)
#SUBMIT Button
	browser.find_element(css: "body > div > div > div:nth-child(5) > div > div.intake-actions > a").click
		sleep(2)
		browser.find_element(css: "button.btn").click
sleep(2)

#Close Browser
	browser.close

		#browser.find_element(xpath: "").click
		#browser.find_element(xpath: "").click




#Next Button
		#browser.find_element(css: "body > div > div > div:nth-child(5) > div > form > div.intake-actions > button").click




