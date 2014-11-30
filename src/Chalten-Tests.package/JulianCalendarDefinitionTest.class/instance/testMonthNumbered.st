test months accessing
testMonthNumbered

	self
		assert: (JulianCalendar monthNumbered: 1) = JulianJanuary;
		assert: (JulianCalendar monthNumbered: 2) = JulianFebruary;
		assert: (JulianCalendar monthNumbered: 3) = JulianMarch;
		assert: (JulianCalendar monthNumbered: 4) = JulianApril;
		assert: (JulianCalendar monthNumbered: 5) = JulianMay;
		assert: (JulianCalendar monthNumbered: 6) = JulianJune;
		assert: (JulianCalendar monthNumbered: 7) = JulianJuly;
		assert: (JulianCalendar monthNumbered: 8) = JulianAugust;
		assert: (JulianCalendar monthNumbered: 9) = JulianSeptember;
		assert: (JulianCalendar monthNumbered: 10) = JulianOctober;
		assert: (JulianCalendar monthNumbered: 11) = JulianNovember;
		assert: (JulianCalendar monthNumbered: 12) = JulianDecember