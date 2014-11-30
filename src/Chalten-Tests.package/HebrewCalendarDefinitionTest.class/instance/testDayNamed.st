test days accessing
testDayNamed

	self
		assert: (HebrewCalendar dayNamed: 'yom rishon') = YomRishon;
		assert: (HebrewCalendar dayNamed: 'yom sheni') = YomSheni;
		assert: (HebrewCalendar dayNamed: 'yom shelishi') = YomShelishi;
		assert: (HebrewCalendar dayNamed: 'yom revi`i') = YomRevii;
		assert: (HebrewCalendar dayNamed: 'yom hamishi') = YomHamishi;
		assert: (HebrewCalendar dayNamed: 'yom shishi') = YomShishi;
		assert: (HebrewCalendar dayNamed: 'yom shabbat') = YomShabbat