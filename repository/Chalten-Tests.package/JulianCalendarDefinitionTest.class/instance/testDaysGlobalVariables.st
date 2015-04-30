test global variables
testDaysGlobalVariables

	self
		assert: JulianSunday = JulianCalendar sunday;
		assert: JulianMonday = JulianCalendar monday;
		assert: JulianTuesday = JulianCalendar tuesday;
		assert: JulianWednesday = JulianCalendar wednesday;
		assert: JulianThursday = JulianCalendar thursday;
		assert: JulianFriday = JulianCalendar friday;
		assert: JulianSaturday = JulianCalendar saturday