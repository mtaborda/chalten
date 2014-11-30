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
			self assert: anException description = 'Day of month 0 invalid for Muharram'].
	self 
		should: [DayOfMonth monthNumber: 1 dayNumber: 31 calendar: calendar]
		raise: InvalidDayOfMonthException
		withExceptionDo: [:anException | 
			self assert: anException description = 'Day of month 31 invalid for Muharram']