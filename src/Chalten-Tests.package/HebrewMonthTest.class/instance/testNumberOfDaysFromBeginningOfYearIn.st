test accessing
testNumberOfDaysFromBeginningOfYearIn
	| leapYear nonleapYear |
	leapYear := 5768 asHebrewYear.
	nonleapYear := 5767 asHebrewYear.
	self assert: (nisan numberOfDaysFromBeginningOfYearIn: leapYear) = 206 daysMeasure.
	self assert: (nisan numberOfDaysFromBeginningOfYearIn: nonleapYear) = 178 daysMeasure.
	self assert: (iyyar numberOfDaysFromBeginningOfYearIn: leapYear) = 236 daysMeasure.
	self assert: (iyyar numberOfDaysFromBeginningOfYearIn: nonleapYear) = 208 daysMeasure.
	self assert: (sivan numberOfDaysFromBeginningOfYearIn: leapYear) = 265 daysMeasure.
	self assert: (sivan numberOfDaysFromBeginningOfYearIn: nonleapYear) = 237 daysMeasure.
	self assert: (tammuz numberOfDaysFromBeginningOfYearIn: leapYear) = 295 daysMeasure.
	self assert: (tammuz numberOfDaysFromBeginningOfYearIn: nonleapYear) = 267 daysMeasure.
	self assert: (av numberOfDaysFromBeginningOfYearIn: leapYear) = 324 daysMeasure.
	self assert: (av numberOfDaysFromBeginningOfYearIn: nonleapYear) = 296 daysMeasure.
	self assert: (elul numberOfDaysFromBeginningOfYearIn: leapYear) = 354 daysMeasure.
	self assert: (elul numberOfDaysFromBeginningOfYearIn: nonleapYear) = 326 daysMeasure.
	self assert: (tishri numberOfDaysFromBeginningOfYearIn: leapYear) = 0 daysMeasure.
	self assert: (tishri numberOfDaysFromBeginningOfYearIn: nonleapYear) = 0 daysMeasure.
	self assert: (marheshvan numberOfDaysFromBeginningOfYearIn: leapYear) = 30 daysMeasure.
	self assert: (marheshvan numberOfDaysFromBeginningOfYearIn: nonleapYear) = 30 daysMeasure.
	self assert: (kislev numberOfDaysFromBeginningOfYearIn: leapYear) = 59 daysMeasure.
	self assert: (kislev numberOfDaysFromBeginningOfYearIn: nonleapYear) = 60 daysMeasure.
	self assert: (tevet numberOfDaysFromBeginningOfYearIn: leapYear) = 88 daysMeasure.
	self assert: (tevet numberOfDaysFromBeginningOfYearIn: nonleapYear) = 90 daysMeasure.
	self assert: (shevat numberOfDaysFromBeginningOfYearIn: leapYear) = 117 daysMeasure.
	self assert: (shevat numberOfDaysFromBeginningOfYearIn: nonleapYear) = 119 daysMeasure.
	self
		should: [ adar numberOfDaysFromBeginningOfYearIn: leapYear ]
		raise: InvalidMonthForLeapYearsException
		withExceptionDo: [ :exception | self assert: exception description = 'Adar is an invalid month for leap Year 5768' ].
	self assert: (adar numberOfDaysFromBeginningOfYearIn: nonleapYear) = 149 daysMeasure.
	self assert: (adarI numberOfDaysFromBeginningOfYearIn: leapYear) = 147 daysMeasure.
	self
		should: [ adarI numberOfDaysFromBeginningOfYearIn: nonleapYear ]
		raise: InvalidMonthForNonleapYearsException
		withExceptionDo: [ :exception | self assert: exception description = 'Adar I is an invalid month for nonleap Year 5767' ].
	self assert: (adarII numberOfDaysFromBeginningOfYearIn: leapYear) = 177 daysMeasure.
	self
		should: [ adarII numberOfDaysFromBeginningOfYearIn: nonleapYear ]
		raise: InvalidMonthForNonleapYearsException
		withExceptionDo: [ :exception | self assert: exception description = 'Adar II is an invalid month for nonleap Year 5767' ]