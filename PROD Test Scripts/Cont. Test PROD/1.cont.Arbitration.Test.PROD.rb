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
		sleep(1)

	#Login screen

	browser.find_element(id: "user-email").send_keys "josh"
		browser.find_element(id: "user-password").send_keys "test_password"
			browser.find_element(id: "loginFormSubmitBtn").click
		sleep(1)


#Home page
	#Enters new contemporaneous case.
		browser.find_element(xpath: "/html/body/div/section[2]/div/article[1]/div/a[2]").click
		sleep(1)

#Data Submission Type
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Institution of receive credit
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[12]/a/div").click
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/button").click
sleep(1)

#Case Type:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[16]/a/div").click
	#Case Sub-Type:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[7]/a/div").click
#Geographic Region of the case
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/ul/li/div[9]/a/div").click
	#Country of the case:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div/ul/li/div[6]/a/div").click
#What was the language of the parties' principal contract?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div/ul/li/div[14]/a/div").click
#Contract Currency:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/ul/li/div[15]/a/div").click
#Was the case filed as mediation or arbitration?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/label[2]/span").click
#Was the case referred for mediation, after being filed for arbitration?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[11]/div[2]/div/div/div/label[1]/span").click
#Was the entire case concluded by the mediation?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[12]/div[2]/div/div/div/label[2]/span").click
#Did the case continue onto arbitration?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[13]/div[2]/div/div/div/label[1]/span").click
#Was the mediator a different person from the arbitrator?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[14]/div[2]/div/div/div/label[1]/span").click
#Date of Mediation request:
	#Month
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[15]/div[2]/div/div/div[1]/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[15]/div[2]/div/div/div[1]/ul/li/div[5]/a/div").click
		#Day
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[15]/div[2]/div/div/div[2]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[15]/div[2]/div/div/div[2]/ul/li/div[17]/a/div").click
			#Year
			browser.find_element(css: "div.ui-select-date:nth-child(3) > div:nth-child(1) > button:nth-child(1)").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[15]/div[2]/div/div/div[3]/ul/li/div[12]/a/div").click
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/button").click
sleep(1)
#Method of Arbitrator selection:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Number of arbitrators? = 3
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[5]/a/div").click
# Was there a challenge to the Arbitrator selected?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[3]/div[2]/div/div/div/label[1]/span").click
#If yes, on what grounds was the Arbitrator challenged?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[4]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[4]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Was the Challenge granted?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[5]/div[2]/div/div/div/label[1]/span").click
#Was the case Settled?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[6]/div[2]/div/div/div/label[1]/span").click
#Date Settled:
	#Month
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div[1]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div[1]/ul/li/div[4]/a/div").click
			#Day
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div[2]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div[2]/ul/li/div[5]/a/div").click
				#Year
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div[3]/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[7]/div[2]/div/div/div[3]/ul/li/div[6]/a/div").click
#Was the case Withdrawn?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[8]/div[2]/div/div/div/label[2]/span").click
#Was the Proceeding Stayed at Any Time?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[10]/div[2]/div/div/div/label[1]/span").click
	#If yes, by whom?
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[11]/div[2]/div/div/div/label[1]/span").click
#How long was the proceeding Stayed?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[12]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[12]/div[2]/div/div/div/ul/li/div[6]/a/div").click
# How many motions were filed?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[13]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[13]/div[2]/div/div/div/ul/li/div[6]/a/div").click
#Were one of these motions a motion for summary judgment?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[14]/div[2]/div/div/div/label[1]/span").click

#CLAIMANT'S geographic region:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[8]/a/div").click
	#CLAIMANT'S country:
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[2]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[14]/a/div").click
#RESPONDENT'S geographic region:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[3]/div[2]/div/div/div/ul/li/div[5]/a/div").click
	#RESPONDENT'S Country
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[4]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[4]/div[2]/div/div/div/ul/li/div[31]/a/div").click
#Was the locale of the Hearings disputed?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[5]/div[2]/div/div/div/label[1]/span").click
	#Did the locale of the hearing change as a result of the dispute?
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[6]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[6]/div[2]/div/div/div/ul/li/div[4]/a/div").click
#Were national courts involved?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/div[2]/div[7]/div[2]/div/div/div/label[1]/span").click
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[4]/button").click
sleep(1)

#Date of Demand
		#Month
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[1]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[1]/ul/li/div[4]/a/div").click
			#Day
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/ul/li/div[21]/a/div").click
				#Year
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[3]/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[3]/ul/li/div[12]/a/div").click
#Preparatory hearing Date:
		#Month
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div[1]/ul/li/div[15]/a/div").click
			#Day
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div[2]/ul/li/div[28]/a/div").click
				#Year
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div[3]/ul/li/div[12]/a/div").click
#Did a hearing take place?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/label[1]/span").click
#Date hearing BEGAN
		#Month
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div[1]/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div[1]/ul/li/div[6]/a/div").click
					#Day
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div[2]/div/button").click
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div[2]/ul/li/div[14]/a/div").click
						#Year
						browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div[3]/div/button").click
						browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/div[3]/ul/li/div[11]/a/div").click
#Date hearing CONCLUDED
		#Month
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div[1]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div[1]/ul/li/div[14]/a/div").click
				#Day
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div[2]/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div[2]/ul/li/div[13]/a/div").click
					#Year
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div[3]/div/button").click
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div[3]/ul/li/div[11]/a/div").click
#Location of hearing
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/ul/li/div[6]/a/div").click
#Date of Dispute (If known)
		#Month
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div[1]/div/button").click
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div[1]/ul/li/div[9]/a/div").click
				#Day
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div[2]/div/button").click
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div[2]/ul/li/div[23]/a/div").click
					#Year
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div[3]/div/button").click
					browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div[3]/ul/li/div[22]/a/div").click
#Location where dispute occurred (if known):
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/ul/li/div[6]/a/div").click
	#Country where dispute occurred (if known):
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[9]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[9]/div[2]/div/div/div/ul/li/div[8]/a/div").click
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/button").click
sleep(1)

#Demand Type
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div/label[3]/span").click
#Demand Amount
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/input").send_keys "89931"
#Describe non-monetary demand:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/textarea").send_keys "Wash claimant's car for 2 weeks"
#Was a counterclaim filed for this case?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/label[1]/span").click
#Counterclaim Demand Type:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/label[3]/span").click
# Counterclaim Demand Amount:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[3]/div[2]/div/div/input").send_keys "4533"
#did the counterclaim prevail
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[4]/div[2]/div/div/div/label[1]/span").click
#Counterclaim Award Amount:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[5]/div[2]/div/div/input").send_keys "458"
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/button").click
sleep(1)

#Date of Award:
#Month
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[1]/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[1]/ul/li/div[6]/a/div").click
	#Day
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/ul/li/div[7]/a/div").click
		#Year
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[3]/div/button").click
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[3]/ul/li/div[4]/a/div").click


#Prevailing Party:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Amounts Awarded To:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Amount of Award-Respondent:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/input").send_keys "543"
#Were Post Award Motions filed?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/ul/li/div[4]/a/div").click
	#If yes, why?
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/div/button").click
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/ul/li/div[4]/a/div").click
#Did both parties voluntarily comply with the Award?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/ul/li/div[4]/a/div").click
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/button").click
sleep(1)

#Total Institutional Fees:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[1]/div[2]/div/div/input").send_keys "453"
# Total Arbitrator / Mediator Fees:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[2]/div[2]/div/div/input").send_keys "342"
# Did the Award grant costs? (i.e. attorneys fees)
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[3]/div[2]/div/div/div/label[1]/span").click
#If yes, how much?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[4]/div[2]/div/div/input").send_keys "2321"
#Was a 3rd party funder involved?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[5]/div[2]/div/div/div/label[1]/span").click
#For Which Party?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[6]/div[2]/div/div/div/label[2]/span").click
#Did the Parties use:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[7]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Was there a Third Party Amicus Curiae Brief?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[8]/div[2]/div/div/div/label[1]/span").click
	#Were emergency arbitration procedures availed by one of the parties?
	browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[9]/div[2]/div/div/div/label[1]/span").click
		#Was there a motion to include 3rd Party Interveners?
		browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[10]/div[2]/div/div/div/label[1]/span").click
			#Was the motion to include 3rd Party Interveners granted?
			browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[11]/div[2]/div/div/div/label[1]/span").click
				#Describe 3rd Party Intervener Involvement:
				browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[1]/div[2]/div[12]/div[2]/div/div/textarea").send_keys "They basically did nothing"
#Number of Depositions:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[1]/div[2]/div/div/div/ul/li/div[5]/a/div").click
#Number of Interrogatories:
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/div/button").click
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[2]/div[2]/div/div/div/ul/li/div[6]/a/div").click
#Was E-Discovery used?
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[2]/div[2]/div[3]/div[2]/div/div/div/label[1]/span").click
#NEXT
browser.find_element(xpath: "/html/body/div/div/div[5]/div/form/div[3]/button").click
sleep(2)
#Submit
browser.find_element(xpath: "/html/body/div/div/div[5]/div/div[8]/a").click
sleep(2)

#Return to Dashboard
browser.find_element(css: "button.btn").click
sleep(3)
#Close Browser
	browser.close


