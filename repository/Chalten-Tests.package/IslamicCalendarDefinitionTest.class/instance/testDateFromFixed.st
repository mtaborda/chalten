test dates accessing
testDateFromFixed
	| muharramThirdOf1 muharramSeventhOf1 muharramThirdOf2 rabiISecondOf4 muharramThirdOf5 |
	muharramThirdOf1 := Muharram third , 1.
	muharramSeventhOf1 := Muharram seventh , 1.
	muharramThirdOf2 := Muharram third , 2.
	rabiISecondOf4 := RabiI second , 4.
	muharramThirdOf5 := Muharram third , 5.
	self 
		assert: (IslamicCalendar dateFromNumberOfDays: 227017) = muharramThirdOf1.
	self 
		assert: (IslamicCalendar dateFromNumberOfDays: 227021) = muharramSeventhOf1.
	self 
		assert: (IslamicCalendar dateFromNumberOfDays: 227371) = muharramThirdOf2.
	self 
		assert: (IslamicCalendar dateFromNumberOfDays: 228138) = rabiISecondOf4.
	self 
		assert: (IslamicCalendar dateFromNumberOfDays: 228434) = muharramThirdOf5