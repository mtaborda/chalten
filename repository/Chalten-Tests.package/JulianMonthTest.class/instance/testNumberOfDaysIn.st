test accessing
testNumberOfDaysIn
	| leapYear nonleapYear |
	leapYear := 2008 asJulianYear.
	nonleapYear := 2007 asJulianYear.
	self assert: (january numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (january numberOfDaysIn: nonleapYear) = 31 daysMeasure.
	self assert: (february numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (february numberOfDaysIn: nonleapYear) = 28 daysMeasure.
	self assert: (march numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (march numberOfDaysIn: nonleapYear) = 31 daysMeasure.
	self assert: (april numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (april numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (may numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (may numberOfDaysIn: nonleapYear) = 31 daysMeasure.
	self assert: (june numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (june numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (july numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (july numberOfDaysIn: nonleapYear) = 31 daysMeasure.
	self assert: (august numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (august numberOfDaysIn: nonleapYear) = 31 daysMeasure.
	self assert: (september numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (september numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (october numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (october numberOfDaysIn: nonleapYear) = 31 daysMeasure.
	self assert: (november numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (november numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (december numberOfDaysIn: leapYear) = 31 daysMeasure.
	self assert: (december numberOfDaysIn: nonleapYear) = 31 daysMeasure