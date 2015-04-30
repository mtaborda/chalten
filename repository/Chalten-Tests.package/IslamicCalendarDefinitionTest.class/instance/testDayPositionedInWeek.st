test days accessing
testDayPositionedInWeek

	self
		assert: (IslamicCalendar dayPositionedInWeek: 1) = YaumAlAhad;
		assert: (IslamicCalendar dayPositionedInWeek: 2) = YaumAlIthnayna;
		assert: (IslamicCalendar dayPositionedInWeek: 3) = YaumAthThalatha;
		assert: (IslamicCalendar dayPositionedInWeek: 4) = YaumAlArbaa;
		assert: (IslamicCalendar dayPositionedInWeek: 5) = YaumAlHamis;
		assert: (IslamicCalendar dayPositionedInWeek: 6) = YaumAlJuma;
		assert: (IslamicCalendar dayPositionedInWeek: 7) = YaumAsSabt