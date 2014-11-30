test
testNumberOfDaysFromBeginningOfYearIn

	self assert: (shortDefinition numberOfDaysFromBeginningOfYearIn: self for: self) = self ninetyDays.
	self assert: (longDefinition numberOfDaysFromBeginningOfYearIn: self for: self) = self ninetyDays