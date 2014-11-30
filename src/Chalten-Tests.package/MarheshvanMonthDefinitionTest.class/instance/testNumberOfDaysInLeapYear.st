test
testNumberOfDaysInLeapYear

	self assert: longDefinition numberOfDaysInLeapYear = self thirtyDays.
	self assert: shortDefinition numberOfDaysInLeapYear = self twentynineDays