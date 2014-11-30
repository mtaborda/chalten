test months accessing
testMonthNamed

	self
		assert: (JulianCalendar monthNamed: 'January') = JulianJanuary;
		assert: (JulianCalendar monthNamed: 'February') = JulianFebruary;
		assert: (JulianCalendar monthNamed: 'March') = JulianMarch;
		assert: (JulianCalendar monthNamed: 'April') = JulianApril;
		assert: (JulianCalendar monthNamed: 'May') = JulianMay;
		assert: (JulianCalendar monthNamed: 'June') = JulianJune;
		assert: (JulianCalendar monthNamed: 'July') = JulianJuly;
		assert: (JulianCalendar monthNamed: 'August') = JulianAugust;
		assert: (JulianCalendar monthNamed: 'September') = JulianSeptember;
		assert: (JulianCalendar monthNamed: 'October') = JulianOctober;
		assert: (JulianCalendar monthNamed: 'November') = JulianNovember;
		assert: (JulianCalendar monthNamed: 'December') = JulianDecember.
		
	self
		should: [ GregorianCalendar monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]