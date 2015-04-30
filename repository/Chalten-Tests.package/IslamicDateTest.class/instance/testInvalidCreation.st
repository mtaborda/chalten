test instance creation
testInvalidCreation
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 1
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Muharram of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 2
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Safar of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 3
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Rabi` I (Rabi` al-Awwal) of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 4
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Rabi` II (Rabi` al-Ahir) of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 5
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Jumada I (Jumada al-Ula) of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 6
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Jumada II (Jumada al-Ahira) of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 7
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Rajab of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 8
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Sha`ban of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 9
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Ramadan of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 10
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Shawwal of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 11
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Dhu al-Qa`da of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1427
				monthNumber: 12
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Dhu al-Hijja of Year 1427'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 12
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Dhu al-Hijja of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 13
				dayNumber: 1
				calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: 
			[:exception | 
			self assert: exception description = '13 is an invalid number for a month'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 0
				dayNumber: 1
				calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: 
			[:exception | 
			self assert: exception description = '0 is an invalid number for a month'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: -1
				dayNumber: 1
				calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: 
			[:exception | 
			self assert: exception description = '-1 is an invalid number for a month'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 1
				dayNumber: 0
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 0 is invalid for the month Muharram of Year 1428'].
	self 
		should: 
			[FixedDate 
				yearNumber: 1428
				monthNumber: 1
				dayNumber: -1
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day -1 is invalid for the month Muharram of Year 1428']