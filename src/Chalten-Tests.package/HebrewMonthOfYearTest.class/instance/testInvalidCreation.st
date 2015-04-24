test instance creation
testInvalidCreation

	self 
		should: [AdarII, 5767]
		raise: InvalidMonthForNonleapYearsException
		withExceptionDo: [:anException | 
			self assert: anException description = 'Adar II is an invalid month for nonleap Year 5767'].
	self 
		should: [AdarI, 5767]
		raise: InvalidMonthForNonleapYearsException
		withExceptionDo: [:anException | 
			self assert: anException description = 'Adar I is an invalid month for nonleap Year 5767'].
	self 
		should: [Adar, 5768]
		raise: InvalidMonthForLeapYearsException
		withExceptionDo: [:anException | 
			self assert: anException description = 'Adar is an invalid month for leap Year 5768'].
	self 
		should: [MonthOfYear yearNumber: 5768 monthNumber: 14 calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = '14 is an invalid number for a month'].
	self 
		should: [MonthOfYear yearNumber: 1 monthNumber: 0 calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = '0 is an invalid number for a month']