test year testing
testIsYearNumberLeap

	self
		assert: (GregorianCalendar isYearNumberLeap: 1904);
		assert: (GregorianCalendar isYearNumberLeap: 1908);
		assert: (GregorianCalendar isYearNumberLeap: 1992);
		assert: (GregorianCalendar isYearNumberLeap: 2000);
		assert: (GregorianCalendar isYearNumberLeap: 2004).

	self
		deny: (GregorianCalendar isYearNumberLeap: 1900);
		deny: (GregorianCalendar isYearNumberLeap: 1915);
		deny: (GregorianCalendar isYearNumberLeap: 1991);
		deny: (GregorianCalendar isYearNumberLeap: 2007);
		deny: (GregorianCalendar isYearNumberLeap: 2100)