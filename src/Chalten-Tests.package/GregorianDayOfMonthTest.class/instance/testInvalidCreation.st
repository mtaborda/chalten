test instance creation
testInvalidCreation

	self 
		should: [DayOfMonth monthNumber: 0 dayNumber: 1 calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = '0 is an invalid number for a month'].
	self 
		should: [DayOfMonth monthNumber: 1 dayNumber: 0 calendar: calendar]
		raise: InvalidDayOfMonthException
		withExceptionDo: [:anException | 
			self assert: anException description = 'Day of month 0 invalid for January'].
	self 
		should: [DayOfMonth monthNumber: 1 dayNumber: 32 calendar: calendar]
		raise: InvalidDayOfMonthException
		withExceptionDo: [:anException | 
			self assert: anException description = 'Day of month 32 invalid for January']