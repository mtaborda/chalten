test accessing
testNumberOfDaysIn
	| leapYear nonleapYear |
	leapYear := 5768 asHebrewYear.
	nonleapYear := 5767 asHebrewYear.
	self assert: (nisan numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (nisan numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (iyyar numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (iyyar numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (sivan numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (sivan numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (tammuz numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (tammuz numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (av numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (av numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (elul numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (elul numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (tishri numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (tishri numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (marheshvan numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (marheshvan numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (kislev numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (kislev numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (tevet numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (tevet numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (shevat numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (shevat numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (adar numberOfDaysIn: leapYear) = 0 daysMeasure.
	self assert: (adar numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (adarI numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (adarI numberOfDaysIn: nonleapYear) = 0 daysMeasure.
	self assert: (adarII numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (adarII numberOfDaysIn: nonleapYear) = 0 daysMeasure