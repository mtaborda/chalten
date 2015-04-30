test enumerating
testPreviousDay

	| date |

	date := January first, 2007.
	self assert: (date previousDay: calendar monday) = (December twentyfifth, 2006).
	self assert: (date previousDay: calendar tuesday) = (December twentysixth, 2006).
	self assert: (date previousDay: calendar wednesday) = (December twentyseventh, 2006).
	self assert: (date previousDay: calendar thursday) = (December twentyeighth, 2006).
	self assert: (date previousDay: calendar friday) = (December twentyninth, 2006).
	self assert: (date previousDay: calendar saturday) = (December thirtieth, 2006).
	self assert: (date previousDay: calendar sunday) = (December thirtyfirst, 2006)