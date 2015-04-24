test enumerating
testPreviousDay

	self assert:
		(relativeDate previousDay: GregorianCalendar saturday) =
			(absoluteDate previousDay: GregorianCalendar saturday)