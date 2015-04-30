test accessing
testLastDayNumber
	self assert: (MonthOfYear nisanOf: 5768 asHebrewYear) lastDayNumber = (Nisan , 5768) numberOfDays amount.
	self assert: (MonthOfYear iyyarOf: 5768 asHebrewYear) lastDayNumber = (Iyyar , 5768) numberOfDays amount.
	self assert: (MonthOfYear sivanOf: 5768 asHebrewYear) lastDayNumber = (Sivan , 5768) numberOfDays amount.
	self assert: (MonthOfYear tammuzOf: 5768 asHebrewYear) lastDayNumber = (Tammuz , 5768) numberOfDays amount.
	self assert: (MonthOfYear avOf: 5768 asHebrewYear) lastDayNumber = (Av , 5768) numberOfDays amount.
	self assert: (MonthOfYear elulOf: 5768 asHebrewYear) lastDayNumber = (Elul , 5768) numberOfDays amount.
	self assert: (MonthOfYear tishriOf: 5768 asHebrewYear) lastDayNumber = (Tishri , 5768) numberOfDays amount.
	self assert: (MonthOfYear marheshvanOf: 5768 asHebrewYear) lastDayNumber = (Marheshvan , 5768) numberOfDays amount.
	self assert: (MonthOfYear kislevOf: 5768 asHebrewYear) lastDayNumber = (Kislev , 5768) numberOfDays amount.
	self assert: (MonthOfYear tevetOf: 5768 asHebrewYear) lastDayNumber = (Tevet , 5768) numberOfDays amount.
	self assert: (MonthOfYear shevatOf: 5768 asHebrewYear) lastDayNumber = (Shevat , 5768) numberOfDays amount.
	self assert: (MonthOfYear adarIOf: 5768 asHebrewYear) lastDayNumber = (AdarI , 5768) numberOfDays amount.
	self assert: (MonthOfYear adarIIOf: 5768 asHebrewYear) lastDayNumber = (AdarII , 5768) numberOfDays amount.
	self assert: (MonthOfYear adarOf: 5769 asHebrewYear) lastDayNumber = (Adar , 5769) numberOfDays amount