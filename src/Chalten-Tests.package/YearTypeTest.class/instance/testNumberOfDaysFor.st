test
testNumberOfDaysFor

	self assert: (leapYearType numberOfDaysFor: self) = self threeHundredSixtySixDays.
	self assert: (nonleapYearType numberOfDaysFor: self) = self threeHundredSixtyFiveDays