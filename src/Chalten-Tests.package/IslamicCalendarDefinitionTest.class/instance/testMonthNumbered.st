test months accessing
testMonthNumbered

	self
		assert: (IslamicCalendar monthNumbered: 1) = Muharram;
		assert: (IslamicCalendar monthNumbered: 2) = Safar;
		assert: (IslamicCalendar monthNumbered: 3) = RabiI;
		assert: (IslamicCalendar monthNumbered: 4) = RabiII;
		assert: (IslamicCalendar monthNumbered: 5) = JumadaI;
		assert: (IslamicCalendar monthNumbered: 6) = JumadaII;
		assert: (IslamicCalendar monthNumbered: 7) = Rajab;
		assert: (IslamicCalendar monthNumbered: 8) = Shaban;
		assert: (IslamicCalendar monthNumbered: 9) = Ramadan;
		assert: (IslamicCalendar monthNumbered: 10) = Shawwal;
		assert: (IslamicCalendar monthNumbered: 11) = DhuAlQada;
		assert: (IslamicCalendar monthNumbered: 12) = DhuAlHijja