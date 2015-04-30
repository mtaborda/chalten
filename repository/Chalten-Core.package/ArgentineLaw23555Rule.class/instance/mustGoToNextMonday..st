querying - private
mustGoToNextMonday: aGregorianDate

	^aGregorianDate day = GregorianCalendar thursday
		or: [aGregorianDate day = GregorianCalendar friday]