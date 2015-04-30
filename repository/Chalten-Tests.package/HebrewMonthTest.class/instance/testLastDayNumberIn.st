test accessing
testLastDayNumberIn
	| leapYear nonleapYear |
	leapYear := 1428 asHebrewYear.
	nonleapYear := 1427 asHebrewYear.
	self assert: (nisan lastDayNumberIn: leapYear) = 30.
	self assert: (nisan lastDayNumberIn: nonleapYear) = 30.
	self assert: (iyyar lastDayNumberIn: leapYear) = 29.
	self assert: (iyyar lastDayNumberIn: nonleapYear) = 29.
	self assert: (sivan lastDayNumberIn: leapYear) = 30.
	self assert: (sivan lastDayNumberIn: nonleapYear) = 30.
	self assert: (tammuz lastDayNumberIn: leapYear) = 29.
	self assert: (tammuz lastDayNumberIn: nonleapYear) = 29.
	self assert: (av lastDayNumberIn: leapYear) = 30.
	self assert: (av lastDayNumberIn: nonleapYear) = 30.
	self assert: (elul lastDayNumberIn: leapYear) = 29.
	self assert: (elul lastDayNumberIn: nonleapYear) = 29.
	self assert: (tishri lastDayNumberIn: leapYear) = 30.
	self assert: (tishri lastDayNumberIn: nonleapYear) = 30.
	self assert: (marheshvan lastDayNumberIn: leapYear) = 30.
	self assert: (marheshvan lastDayNumberIn: nonleapYear) = 29.
	self assert: (kislev lastDayNumberIn: leapYear) = 30.
	self assert: (kislev lastDayNumberIn: nonleapYear) = 30.
	self assert: (tevet lastDayNumberIn: leapYear) = 29.
	self assert: (tevet lastDayNumberIn: nonleapYear) = 29.
	self assert: (shevat lastDayNumberIn: leapYear) = 30.
	self assert: (shevat lastDayNumberIn: nonleapYear) = 30.
	self assert: (adar lastDayNumberIn: nonleapYear) = 29.
	self assert: (adar lastDayNumberIn: leapYear) = 0.
	self assert: (adarI lastDayNumberIn: leapYear) = 30.
	self assert: (adarI lastDayNumberIn: nonleapYear) = 0.
	self assert: (adarII lastDayNumberIn: leapYear) = 29.
	self assert: (adarII lastDayNumberIn: nonleapYear) = 0