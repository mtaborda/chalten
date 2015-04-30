test enumerating
testPreviousDay

	| date |

	date := JulianJanuary first, 2007.
	self assert: (date previousDay: calendar monday) = (JulianDecember twentysixth, 2006).
	self assert: (date previousDay: calendar tuesday) = (JulianDecember twentyseventh, 2006).
	self assert: (date previousDay: calendar wednesday) = (JulianDecember twentyeighth, 2006).
	self assert: (date previousDay: calendar thursday) = (JulianDecember twentyninth, 2006).
	self assert: (date previousDay: calendar friday) = (JulianDecember thirtieth, 2006).
	self assert: (date previousDay: calendar saturday) = (JulianDecember thirtyfirst, 2006).
	self assert: (date previousDay: calendar sunday) = (JulianDecember twentyfifth, 2006)