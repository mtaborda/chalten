test year testing
testIsYearNumberLeap

	self
		assert: (HebrewCalendar isYearNumberLeap: -2);
		assert: (HebrewCalendar isYearNumberLeap: 0);
		assert: (HebrewCalendar isYearNumberLeap: 3);
		assert: (HebrewCalendar isYearNumberLeap: 6);
		assert: (HebrewCalendar isYearNumberLeap: 8);
		assert: (HebrewCalendar isYearNumberLeap: 11);
		assert: (HebrewCalendar isYearNumberLeap: 14);
		assert: (HebrewCalendar isYearNumberLeap: 17);
		assert: (HebrewCalendar isYearNumberLeap: 19);
		assert: (HebrewCalendar isYearNumberLeap: 22);
		assert: (HebrewCalendar isYearNumberLeap: 25);
		assert: (HebrewCalendar isYearNumberLeap: 27);
		assert: (HebrewCalendar isYearNumberLeap: 5768).

	self
		deny: (HebrewCalendar isYearNumberLeap: -3);
		deny: (HebrewCalendar isYearNumberLeap: 195);
		deny: (HebrewCalendar isYearNumberLeap: 1400);
		deny: (HebrewCalendar isYearNumberLeap: 1429);
		deny: (HebrewCalendar isYearNumberLeap: 5767)