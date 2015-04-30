test days accessing
testDayPositionedInWeek

	self
		assert: (GregorianCalendar dayPositionedInWeek: 1) = Sunday;
		assert: (GregorianCalendar dayPositionedInWeek: 2) = Monday;
		assert: (GregorianCalendar dayPositionedInWeek: 3) = Tuesday;
		assert: (GregorianCalendar dayPositionedInWeek: 4) = Wednesday;
		assert: (GregorianCalendar dayPositionedInWeek: 5) = Thursday;
		assert: (GregorianCalendar dayPositionedInWeek: 6) = Friday;
		assert: (GregorianCalendar dayPositionedInWeek: 7) = Saturday