test accessing
testNumberOfDaysFromBeginningOfYearIn
	| leapYear nonleapYear |
	leapYear := 2008 asGregorianYear.
	nonleapYear := 2007 asGregorianYear.
	self assert: (january numberOfDaysFromBeginningOfYearIn: leapYear) = 0 daysMeasure.
	self assert: (january numberOfDaysFromBeginningOfYearIn: nonleapYear) = 0 daysMeasure.
	self assert: (february numberOfDaysFromBeginningOfYearIn: leapYear) = 31 daysMeasure.
	self assert: (february numberOfDaysFromBeginningOfYearIn: nonleapYear) = 31 daysMeasure.
	self assert: (march numberOfDaysFromBeginningOfYearIn: leapYear) = 60 daysMeasure.
	self assert: (march numberOfDaysFromBeginningOfYearIn: nonleapYear) = 59 daysMeasure.
	self assert: (april numberOfDaysFromBeginningOfYearIn: leapYear) = 91 daysMeasure.
	self assert: (april numberOfDaysFromBeginningOfYearIn: nonleapYear) = 90 daysMeasure.
	self assert: (may numberOfDaysFromBeginningOfYearIn: leapYear) = 121 daysMeasure.
	self assert: (may numberOfDaysFromBeginningOfYearIn: nonleapYear) = 120 daysMeasure.
	self assert: (june numberOfDaysFromBeginningOfYearIn: leapYear) = 152 daysMeasure.
	self assert: (june numberOfDaysFromBeginningOfYearIn: nonleapYear) = 151 daysMeasure.
	self assert: (july numberOfDaysFromBeginningOfYearIn: leapYear) = 182 daysMeasure.
	self assert: (july numberOfDaysFromBeginningOfYearIn: nonleapYear) = 181 daysMeasure.
	self assert: (august numberOfDaysFromBeginningOfYearIn: leapYear) = 213 daysMeasure.
	self assert: (august numberOfDaysFromBeginningOfYearIn: nonleapYear) = 212 daysMeasure.
	self assert: (september numberOfDaysFromBeginningOfYearIn: leapYear) = 244 daysMeasure.
	self assert: (september numberOfDaysFromBeginningOfYearIn: nonleapYear) = 243 daysMeasure.
	self assert: (october numberOfDaysFromBeginningOfYearIn: leapYear) = 274 daysMeasure.
	self assert: (october numberOfDaysFromBeginningOfYearIn: nonleapYear) = 273 daysMeasure.
	self assert: (november numberOfDaysFromBeginningOfYearIn: leapYear) = 305 daysMeasure.
	self assert: (november numberOfDaysFromBeginningOfYearIn: nonleapYear) = 304 daysMeasure.
	self assert: (december numberOfDaysFromBeginningOfYearIn: leapYear) = 335 daysMeasure.
	self assert: (december numberOfDaysFromBeginningOfYearIn: nonleapYear) = 334 daysMeasure