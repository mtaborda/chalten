test accessing
testNumberOfDays
	self assert: (MonthOfYear nisanOf: 5768 asHebrewYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear iyyarOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear sivanOf: 5768 asHebrewYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear tammuzOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear avOf: 5768 asHebrewYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear elulOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear tishriOf: 5768 asHebrewYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear marheshvanOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear kislevOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear tevetOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear shevatOf: 5768 asHebrewYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear adarOf: 5767 asHebrewYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear adarIOf: 5768 asHebrewYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear adarIIOf: 5768 asHebrewYear) numberOfDays = 29 daysMeasure