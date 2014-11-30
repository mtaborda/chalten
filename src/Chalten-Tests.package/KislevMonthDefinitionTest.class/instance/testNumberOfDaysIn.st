test
testNumberOfDaysIn

	current := shortDefinition.
	self assert: (shortDefinition numberOfDaysIn: self) = self twentynineDays.
	
	current := longDefinition.
	self assert: (longDefinition numberOfDaysIn: self) = self thirtyDays