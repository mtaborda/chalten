test global variables
testDaysGlobalVariables

	self
		assert: Sunday = GregorianCalendar sunday;
		assert: Monday = GregorianCalendar monday;
		assert: Tuesday = GregorianCalendar tuesday;
		assert: Wednesday = GregorianCalendar wednesday;
		assert: Thursday = GregorianCalendar thursday;
		assert: Friday = GregorianCalendar friday;
		assert: Saturday = GregorianCalendar saturday