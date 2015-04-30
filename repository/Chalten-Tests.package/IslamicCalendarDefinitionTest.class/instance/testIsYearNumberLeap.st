test year testing
testIsYearNumberLeap

	self
		assert: (IslamicCalendar isYearNumberLeap: -4);
		assert: (IslamicCalendar isYearNumberLeap: 2);
		assert: (IslamicCalendar isYearNumberLeap: 5);
		assert: (IslamicCalendar isYearNumberLeap: 7);
		assert: (IslamicCalendar isYearNumberLeap: 10);
		assert: (IslamicCalendar isYearNumberLeap: 13);
		assert: (IslamicCalendar isYearNumberLeap: 16);
		assert: (IslamicCalendar isYearNumberLeap: 18);
		assert: (IslamicCalendar isYearNumberLeap: 21);
		assert: (IslamicCalendar isYearNumberLeap: 24);
		assert: (IslamicCalendar isYearNumberLeap: 26);
		assert: (IslamicCalendar isYearNumberLeap: 29);
		assert: (IslamicCalendar isYearNumberLeap: 1428).

	self
		deny: (IslamicCalendar isYearNumberLeap: -3);
		deny: (IslamicCalendar isYearNumberLeap: 195);
		deny: (IslamicCalendar isYearNumberLeap: 1400);
		deny: (IslamicCalendar isYearNumberLeap: 1429)