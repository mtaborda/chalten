accessing
numberOfDaysFromBeginningOfYearIn: aYear for: aMonth
	
	^aYear firstDate distanceTo: (aMonth ofYear: aYear) firstDate