instance creation
numberOfDays: aNumberOfDays
	
	^self
		numberOfDaysInNonleapYear: aNumberOfDays
		numberOfDaysInLeapYear: aNumberOfDays