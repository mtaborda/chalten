test
testNumberOfDaysInNonleapYear

	self assert: monthDefinition numberOfDaysInNonleapYear = self twentynineDays.
	self assert: otherDefinition numberOfDaysInNonleapYear = self thirtyDays