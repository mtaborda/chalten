initialization
setUp

	monthDefinition := GenericMonthDefinition 
		numberOfDaysInNonleapYear: self twentynineDays
		numberOfDaysInLeapYear: self thirtyDays.
	otherDefinition := GenericMonthDefinition numberOfDays: self thirtyDays