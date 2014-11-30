test days accessing
testDayPositionedInWeek

	self
		assert: (JulianCalendar dayPositionedInWeek: 1) = JulianSunday;
		assert: (JulianCalendar dayPositionedInWeek: 2) = JulianMonday;
		assert: (JulianCalendar dayPositionedInWeek: 3) = JulianTuesday;
		assert: (JulianCalendar dayPositionedInWeek: 4) = JulianWednesday;
		assert: (JulianCalendar dayPositionedInWeek: 5) = JulianThursday;
		assert: (JulianCalendar dayPositionedInWeek: 6) = JulianFriday;
		assert: (JulianCalendar dayPositionedInWeek: 7) = JulianSaturday