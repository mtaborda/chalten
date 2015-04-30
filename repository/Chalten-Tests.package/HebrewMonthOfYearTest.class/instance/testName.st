test accessing
testName
	self assert: (MonthOfYear nisanOf: 5768 asHebrewYear) name = 'Nisan'.
	self assert: (MonthOfYear iyyarOf: 5768 asHebrewYear) name = 'Iyyar'.
	self assert: (MonthOfYear sivanOf: 5768 asHebrewYear) name = 'Sivan'.
	self assert: (MonthOfYear tammuzOf: 5768 asHebrewYear) name = 'Tammuz'.
	self assert: (MonthOfYear avOf: 5768 asHebrewYear) name = 'Av'.
	self assert: (MonthOfYear elulOf: 5768 asHebrewYear) name = 'Elul'.
	self assert: (MonthOfYear tishriOf: 5768 asHebrewYear) name = 'Tishri'.
	self assert: (MonthOfYear marheshvanOf: 5768 asHebrewYear) name = 'Marheshvan'.
	self assert: (MonthOfYear kislevOf: 5768 asHebrewYear) name = 'Kislev'.
	self assert: (MonthOfYear tevetOf: 5768 asHebrewYear) name = 'Tevet'.
	self assert: (MonthOfYear shevatOf: 5768 asHebrewYear) name = 'Shevat'.
	self assert: (MonthOfYear adarOf: 5767 asHebrewYear) name = 'Adar'.
	self assert: (MonthOfYear adarIOf: 5768 asHebrewYear) name = 'Adar I'.
	self assert: (MonthOfYear adarIIOf: 5768 asHebrewYear) name = 'Adar II'