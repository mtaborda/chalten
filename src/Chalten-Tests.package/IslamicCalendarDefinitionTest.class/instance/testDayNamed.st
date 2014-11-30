test days accessing
testDayNamed

	self
		assert: (IslamicCalendar dayNamed: 'yaum al-ahad') = YaumAlAhad;
		assert: (IslamicCalendar dayNamed: 'yaum al-ithnayna') = YaumAlIthnayna;
		assert: (IslamicCalendar dayNamed: 'yaum ath-thalatha') = YaumAthThalatha;
		assert: (IslamicCalendar dayNamed: 'yaum al-arba`a`') = YaumAlArbaa;
		assert: (IslamicCalendar dayNamed: 'yaum al-hamis') = YaumAlHamis;
		assert: (IslamicCalendar dayNamed: 'yaum al-jum`a') = YaumAlJuma;
		assert: (IslamicCalendar dayNamed: 'yaum as-sabt') = YaumAsSabt