test dates accessing
testFixedFromDate
	| januaryFirstOf1 novemberTwelveOf1945 |
	januaryFirstOf1 := January first , 1.
	novemberTwelveOf1945 := November twelfth , 1945.
	self
		assert: (GregorianCalendar numberOfDaysFromDate: januaryFirstOf1) = 1;
		assert: (GregorianCalendar numberOfDaysFromDate: novemberTwelveOf1945) 
					= 710347