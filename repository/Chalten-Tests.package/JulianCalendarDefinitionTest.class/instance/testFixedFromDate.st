test dates accessing
testFixedFromDate
	| januaryFirstOf1 novemberTwelveOf1945 |
	januaryFirstOf1 := JulianJanuary first , 1.
	novemberTwelveOf1945 := JulianJanuary twelfth , 1945.
	JulianCalendar.
	self
		assert: (JulianCalendar numberOfDaysFromDate: januaryFirstOf1) = -1;
		assert: (JulianCalendar numberOfDaysFromDate: novemberTwelveOf1945) 
					= 710056