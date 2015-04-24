test
testNumberOfDaysInNonleapYear

	self assert: adarDefinition numberOfDaysInNonleapYear = self twentynineDays.
	self assert: adarIDefinition numberOfDaysInNonleapYear = 0 daysMeasure.
	self assert: adarIIDefinition numberOfDaysInNonleapYear = 0 daysMeasure