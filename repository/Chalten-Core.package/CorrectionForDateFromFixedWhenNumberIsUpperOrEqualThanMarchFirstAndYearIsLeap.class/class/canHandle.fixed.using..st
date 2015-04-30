testing
canHandle: aYearNumber fixed: aNumber using: aCalendar 
	^ aNumber >= (aCalendar 
				numberOfDaysFromDate: (self firstOfMarchOf: aYearNumber in: aCalendar)) 
		and: [aCalendar isYearNumberLeap: aYearNumber]