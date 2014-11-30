test
testNumberOfDaysFromBeginningOfYearIn

	self assert: (adarDefinition numberOfDaysFromBeginningOfYearIn: self for: self) = self ninetyDays.
	self assert: (adarIDefinition numberOfDaysFromBeginningOfYearIn: self for: self) = self ninetyDays.
	self assert: (adarIIDefinition numberOfDaysFromBeginningOfYearIn: self for: self) = self ninetyDays