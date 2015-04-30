test days accessing
testDayPositionedInWeek

	self
		assert: (HebrewCalendar dayPositionedInWeek: 1) = YomRishon;
		assert: (HebrewCalendar dayPositionedInWeek: 2) = YomSheni;
		assert: (HebrewCalendar dayPositionedInWeek: 3) = YomShelishi;
		assert: (HebrewCalendar dayPositionedInWeek: 4) = YomRevii;
		assert: (HebrewCalendar dayPositionedInWeek: 5) = YomHamishi;
		assert: (HebrewCalendar dayPositionedInWeek: 6) = YomShishi;
		assert: (HebrewCalendar dayPositionedInWeek: 7) = YomShabbat