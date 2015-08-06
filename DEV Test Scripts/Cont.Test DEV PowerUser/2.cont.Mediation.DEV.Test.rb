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
		sleep(2)

	#Login screen

	browser.find_element(id: "user-email").send_keys "kelley"
		browser.find_element(id: "user-password").send_keys "test_password"
			browser.find_element(id: "loginFormSubmitBtn").click
		sleep(1)


#Home page
	#Enters new contemporaneous case.
		browser.find_element(xpath: "/html/body/div/section[2]/div/article[1]/div/a[2]").click
		sleep(2)

#Data Submission Type
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[6]/a/div").click
#Institution of receive credit
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[14]/a/div").click
#NEXT
#browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/button").click
#sleep(2)

#Case Type:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[9]/a/div").click
	#Case Sub-Type:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Geographic Region of the case
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[3]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[3]/div[2]/div/div/div/ul/li/div[6]/a/div").click
	#Country of the case:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[4]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[4]/div[2]/div/div/div/ul/li/div[26]/a/div").click
#What was the language of the parties' principal contract?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[5]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[5]/div[2]/div/div/div/ul/li/div[8]/a/div").click
#Contract Currency:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[6]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[6]/div[2]/div/div/div/ul/li/div[11]/a/div").click



#Was the case filed as mediation or arbitration
	browser.find_element(xpath: "/html/body/div[3]/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div/label[1]/span").click

#Did mediation successfully conclude the case - "No"
	browser.find_element(xpath: "/html/body/div[3]/div/div[5]/div/form/div[2]/div[2]/div[8]/div[2]/div/div/div/label[2]/span").click
	#If no, what outcome?
	browser.find_element(xpath: "/html/body/div[3]/div/div[5]/div/form/div[2]/div[2]/div[9]/div[2]/div/div/textarea").send_keys "Case resulted in a mis-mediation"
# Did the case continue onto arbitration, after being filed for mediation
browser.find_element(xpath: "/html/body/div[3]/div/div[5]/div/form/div[2]/div[2]/div[10]/div[2]/div/div/div/label[2]/span").click
#NEXT
	browser.find_element(xpath: "/html/body/div[3]/div/div[5]/div/form/div[3]/button").click
	sleep(2)

#Method of Mediator selection:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#How many parties were involved in the case? = 4
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[6]/a/div").click

	#Party 1 geographic region:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/ul/li/div[7]/a/div").click
		#Party 1 country:
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div/ul/li/div[8]/a/div").click
			#Party 2 geographic region:
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div/ul/li/div[10]/a/div").click
				#Party 2 country:
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/ul/li/div[13]/a/div").click
					#Party 3 geographic region:
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/div/button").click
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/ul/li/div[6]/a/div").click
						#Party 3 country:
						browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/div/button").click
						browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/ul/li/div[29]/a/div").click
							#Party 4 geographic region:
							browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[9]/div[2]/div/div/div/div/button").click
							browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[9]/div[2]/div/div/div/ul/li/div[4]/a/div").click
								#Party 4 country:
								browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[10]/div[2]/div/div/div/div/button").click
								browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[10]/div[2]/div/div/div/ul/li/div[15]/a/div").click

#Date of Mediation request:
	#Month
	browser.find_element(css: "div.row:nth-child(29) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > button:nth-child(1)").click
	browser.find_element(css: "div.ui-select-choices-row:nth-child(5) > a:nth-child(1) > div:nth-child(1)").click
		#Day
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[29]/div[2]/div/div/div[2]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[29]/div[2]/div/div/div[2]/ul/li/div[12]/a/div").click
			#Year
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[29]/div[2]/div/div/div[3]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[29]/div[2]/div/div/div[3]/ul/li/div[14]/a/div").click

	#Date mediation conference BEGAN:
	#Month
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[30]/div[2]/div/div/div[1]/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[30]/div[2]/div/div/div[1]/ul/li/div[11]/a/div").click
		#Day
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[30]/div[2]/div/div/div[2]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[30]/div[2]/div/div/div[2]/ul/li/div[8]/a/div").click
			#Year
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[30]/div[2]/div/div/div[3]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[30]/div[2]/div/div/div[3]/ul/li/div[9]/a/div").click

	#Date mediation conference CONCLUDED:
	#Month
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[31]/div[2]/div/div/div[1]/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[31]/div[2]/div/div/div[1]/ul/li/div[14]/a/div").click
		#Day
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[31]/div[2]/div/div/div[2]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[31]/div[2]/div/div/div[2]/ul/li/div[32]/a/div").click
			#Year
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[31]/div[2]/div/div/div[3]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[31]/div[2]/div/div/div[3]/ul/li/div[7]/a/div").click

#Total Institutional fees (if applicable):
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[32]/div[2]/div/div/input").send_keys "998877"
#Total Mediator fees (if known):
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[33]/div[2]/div/div/input").send_keys "665544"

#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[4]/button").click
sleep(1)
#Submit
browser.find_element(css: ".btn-primary").click
sleep(1)
#Return to Dashboard
browser.find_element(css: "#myModal > div.modal-dialog.modal-lg > div > div.modal-footer > button").click
sleep(2)

#Close Browser
	browser.close


