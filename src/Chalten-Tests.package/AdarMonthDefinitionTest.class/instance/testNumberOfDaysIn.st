test
testNumberOfDaysIn

	self assert: (adarDefinition numberOfDaysIn: self) = self twentynineDays.
	self assert: (adarIDefinition numberOfDaysIn: self) = self thirtyDays.
	self assert: (adarIIDefinition numberOfDaysIn: self) = self twentynineDays