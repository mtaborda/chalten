test months accessing
testMonthNamed

	self
		assert: (HebrewCalendar monthNamed: 'Nisan') = Nisan;
		assert: (HebrewCalendar monthNamed: 'Iyyar') = Iyyar;
		assert: (HebrewCalendar monthNamed: 'Sivan') = Sivan;
		assert: (HebrewCalendar monthNamed: 'Tammuz') = Tammuz;
		assert: (HebrewCalendar monthNamed: 'Av') = Av;
		assert: (HebrewCalendar monthNamed: 'Elul') = Elul;
		assert: (HebrewCalendar monthNamed: 'Tishri') = Tishri;
		assert: (HebrewCalendar monthNamed: 'Marheshvan') = Marheshvan;
		assert: (HebrewCalendar monthNamed: 'Kislev') = Kislev;
		assert: (HebrewCalendar monthNamed: 'Tevet') = Tevet;
		assert: (HebrewCalendar monthNamed: 'Shevat') = Shevat;
		assert: (HebrewCalendar monthNamed: 'Adar') = Adar;
		assert: (HebrewCalendar monthNamed: 'Adar I') = AdarI;
		assert: (HebrewCalendar monthNamed: 'Adar II') = AdarII.
		
	self
		should: [ GregorianCalendar monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]