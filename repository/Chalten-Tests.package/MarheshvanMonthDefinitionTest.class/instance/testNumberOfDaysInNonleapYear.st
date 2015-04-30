test
testNumberOfDaysInNonleapYear

	self assert: longDefinition numberOfDaysInNonleapYear = self thirtyDays.
	self assert: shortDefinition numberOfDaysInNonleapYear = self twentynineDays