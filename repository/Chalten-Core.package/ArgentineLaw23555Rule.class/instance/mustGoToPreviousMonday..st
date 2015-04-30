querying - private
mustGoToPreviousMonday: aGregorianDate

	^aGregorianDate day = GregorianCalendar tuesday
		or: [aGregorianDate day = GregorianCalendar wednesday]