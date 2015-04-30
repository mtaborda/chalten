test days accessing
testDayNamed

	self
		assert: (GregorianCalendar dayNamed: 'Sunday') = Sunday;
		assert: (GregorianCalendar dayNamed: 'Monday') = Monday;
		assert: (GregorianCalendar dayNamed: 'Tuesday') = Tuesday;
		assert: (GregorianCalendar dayNamed: 'Wednesday') = Wednesday;
		assert: (GregorianCalendar dayNamed: 'Thursday') = Thursday;
		assert: (GregorianCalendar dayNamed: 'Friday') = Friday;
		assert: (GregorianCalendar dayNamed: 'Saturday') = Saturday