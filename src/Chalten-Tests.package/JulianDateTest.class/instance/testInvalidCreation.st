test instance creation
testInvalidCreation
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 2
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month February of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2003
				monthNumber: 2
				dayNumber: 29
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 29 is invalid for the month February of Year 2003'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 1
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month January of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 3
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month March of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 4
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month April of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 5
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month May of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 6
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month June of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 7
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month July of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 8
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month August of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 9
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month September of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 10
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month October of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 11
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month November of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 12
				dayNumber: 32
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 32 is invalid for the month December of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
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
				yearNumber: 2004
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
				yearNumber: 2004
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
				yearNumber: 2004
				monthNumber: 1
				dayNumber: 0
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 0 is invalid for the month January of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 2004
				monthNumber: 1
				dayNumber: -1
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day -1 is invalid for the month January of Year 2004'].
	self 
		should: 
			[FixedDate 
				yearNumber: 0
				monthNumber: 1
				dayNumber: 1
				calendar: calendar]
		raise: InvalidYearNumberException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= '0 is an invalid number for a year in the Julian Calendar']