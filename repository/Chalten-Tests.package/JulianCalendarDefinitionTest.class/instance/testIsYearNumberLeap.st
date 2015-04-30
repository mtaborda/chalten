test year testing
testIsYearNumberLeap

	self
		assert: (JulianCalendar isYearNumberLeap: -1);
		assert: (JulianCalendar isYearNumberLeap: 1900);
		assert: (JulianCalendar isYearNumberLeap: 1904);
		assert: (JulianCalendar isYearNumberLeap: 1908);
		assert: (JulianCalendar isYearNumberLeap: 1992);
		assert: (JulianCalendar isYearNumberLeap: 2000);
		assert: (JulianCalendar isYearNumberLeap: 2004);
		assert: (JulianCalendar isYearNumberLeap: 2100).

	self
		deny: (JulianCalendar isYearNumberLeap: -4);
		deny: (JulianCalendar isYearNumberLeap: 1915);
		deny: (JulianCalendar isYearNumberLeap: 1991);
		deny: (JulianCalendar isYearNumberLeap: 2007)