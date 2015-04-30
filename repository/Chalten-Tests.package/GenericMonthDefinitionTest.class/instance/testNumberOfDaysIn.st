test
testNumberOfDaysIn

	self assert: (monthDefinition numberOfDaysIn: self) = self thirtyDays.
	self assert: (otherDefinition numberOfDaysIn: self) = self thirtyDays