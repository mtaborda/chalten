test days accessing
testDayNamed

	self
		assert: (JulianCalendar dayNamed: 'Sunday') = JulianSunday;
		assert: (JulianCalendar dayNamed: 'Monday') = JulianMonday;
		assert: (JulianCalendar dayNamed: 'Tuesday') = JulianTuesday;
		assert: (JulianCalendar dayNamed: 'Wednesday') = JulianWednesday;
		assert: (JulianCalendar dayNamed: 'Thursday') = JulianThursday;
		assert: (JulianCalendar dayNamed: 'Friday') = JulianFriday;
		assert: (JulianCalendar dayNamed: 'Saturday') = JulianSaturday