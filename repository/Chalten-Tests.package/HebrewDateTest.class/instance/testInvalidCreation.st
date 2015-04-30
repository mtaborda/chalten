test instance creation
testInvalidCreation
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 1
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Nisan of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 2
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Iyyar of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 3
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Sivan of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 4
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Tammuz of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 5
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Av of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 6
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Elul of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 7
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Tishri of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 8
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Marheshvan of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 9
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Kislev of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 10
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Tevet of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 11
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Shevat of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5768
				monthNumber: 12
				dayNumber: 31
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 31 is invalid for the month Adar I of Year 5768'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 14
				dayNumber: 1
				calendar: calendar]
		raise: InvalidMonthNumberException
		withExceptionDo: 
			[:exception | 
			self assert: exception description = '14 is an invalid number for a month'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
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
				yearNumber: 5767
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
				yearNumber: 5767
				monthNumber: 1
				dayNumber: 0
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 0 is invalid for the month Nisan of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5767
				monthNumber: 1
				dayNumber: -1
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day -1 is invalid for the month Nisan of Year 5767'].
	self 
		should: 
			[FixedDate 
				yearNumber: 5768
				monthNumber: 13
				dayNumber: 30
				calendar: calendar]
		raise: InvalidDateException
		withExceptionDo: 
			[:exception | 
			self assert: exception description 
						= 'The day 30 is invalid for the month Adar II of Year 5768']