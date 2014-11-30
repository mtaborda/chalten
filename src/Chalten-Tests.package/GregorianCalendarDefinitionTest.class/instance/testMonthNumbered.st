test months accessing
testMonthNumbered

	self
		assert: (GregorianCalendar monthNumbered: 1) = January;
		assert: (GregorianCalendar monthNumbered: 2) = February;
		assert: (GregorianCalendar monthNumbered: 3) = March;
		assert: (GregorianCalendar monthNumbered: 4) = April;
		assert: (GregorianCalendar monthNumbered: 5) = May;
		assert: (GregorianCalendar monthNumbered: 6) = June;
		assert: (GregorianCalendar monthNumbered: 7) = July;
		assert: (GregorianCalendar monthNumbered: 8) = August;
		assert: (GregorianCalendar monthNumbered: 9) = September;
		assert: (GregorianCalendar monthNumbered: 10) = October;
		assert: (GregorianCalendar monthNumbered: 11) = November;
		assert: (GregorianCalendar monthNumbered: 12) = December