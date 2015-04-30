test dates accessing
testFixedFromDate
	| muharramFirstOf1 dhuAlQadaTwelveOf1945 |
	muharramFirstOf1 := Muharram first , 1.
	dhuAlQadaTwelveOf1945 := DhuAlQada twelfth , 1945.
	self
		assert: (IslamicCalendar numberOfDaysFromDate: muharramFirstOf1) = 227015;
		assert: (IslamicCalendar numberOfDaysFromDate: dhuAlQadaTwelveOf1945) 
					= 916210