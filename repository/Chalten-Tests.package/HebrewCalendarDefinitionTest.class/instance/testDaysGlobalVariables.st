test global variables
testDaysGlobalVariables

	self
		assert: YomRishon = HebrewCalendar yomRishon;
		assert: YomSheni = HebrewCalendar yomSheni;
		assert: YomShelishi = HebrewCalendar yomShelishi;
		assert: YomRevii = HebrewCalendar yomRevii;
		assert: YomHamishi = HebrewCalendar yomHamishi;
		assert: YomShishi = HebrewCalendar yomShishi;
		assert: YomShabbat = HebrewCalendar yomShabbat