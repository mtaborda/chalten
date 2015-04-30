test months accessing
testMonthNamed

	self
		assert: (GregorianCalendar monthNamed: 'January') = January;
		assert: (GregorianCalendar monthNamed: 'February') = February;
		assert: (GregorianCalendar monthNamed: 'March') = March;
		assert: (GregorianCalendar monthNamed: 'April') = April;
		assert: (GregorianCalendar monthNamed: 'May') = May;
		assert: (GregorianCalendar monthNamed: 'June') = June;
		assert: (GregorianCalendar monthNamed: 'July') = July;
		assert: (GregorianCalendar monthNamed: 'August') = August;
		assert: (GregorianCalendar monthNamed: 'September') = September;
		assert: (GregorianCalendar monthNamed: 'October') = October;
		assert: (GregorianCalendar monthNamed: 'November') = November;
		assert: (GregorianCalendar monthNamed: 'December') = December.
		
	self
		should: [ GregorianCalendar monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]