test months accessing
testMonthNumbered

	self
		assert: (HebrewCalendar monthNumbered: 1) = Nisan;
		assert: (HebrewCalendar monthNumbered: 2) = Iyyar;
		assert: (HebrewCalendar monthNumbered: 3) = Sivan;
		assert: (HebrewCalendar monthNumbered: 4) = Tammuz;
		assert: (HebrewCalendar monthNumbered: 5) = Av;
		assert: (HebrewCalendar monthNumbered: 6) = Elul;
		assert: (HebrewCalendar monthNumbered: 7) = Tishri;
		assert: (HebrewCalendar monthNumbered: 8) = Marheshvan;
		assert: (HebrewCalendar monthNumbered: 9) = Kislev;
		assert: (HebrewCalendar monthNumbered: 10) = Tevet;
		assert: (HebrewCalendar monthNumbered: 11) = Shevat;
		assert: (HebrewCalendar monthNumbered: 12) = Adar;
		assert: (HebrewCalendar monthNumbered: 13) = AdarII