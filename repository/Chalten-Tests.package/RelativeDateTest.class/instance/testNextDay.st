test enumerating
testNextDay

	self assert:
		(relativeDate nextDay: GregorianCalendar saturday) =
			(absoluteDate nextDay: GregorianCalendar saturday)