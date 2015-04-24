test
testNumberOfDaysInLeapYear

	self assert: adarDefinition numberOfDaysInLeapYear = 0 daysMeasure.
	self assert: adarIDefinition numberOfDaysInLeapYear = self thirtyDays.
	self assert: adarIIDefinition numberOfDaysInLeapYear = self twentynineDays