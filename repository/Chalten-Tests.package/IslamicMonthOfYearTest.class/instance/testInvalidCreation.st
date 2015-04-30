test instance creation
testInvalidCreation

	self 
		should: [MonthOfYear yearNumber: 1 monthNumber: 13 calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = '13 is an invalid number for a month'].
	self 
		should: [MonthOfYear yearNumber: 1 monthNumber: 0 calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = '0 is an invalid number for a month']