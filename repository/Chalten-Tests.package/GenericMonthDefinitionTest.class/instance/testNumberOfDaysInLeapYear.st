test
testNumberOfDaysInLeapYear

	self assert: monthDefinition numberOfDaysInLeapYear = self thirtyDays.
	self assert: otherDefinition numberOfDaysInLeapYear = self thirtyDays