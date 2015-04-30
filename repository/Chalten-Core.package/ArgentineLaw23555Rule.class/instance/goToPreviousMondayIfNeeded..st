querying - private
goToPreviousMondayIfNeeded: aGregorianDate

	^(self mustGoToPreviousMonday: aGregorianDate)
		ifTrue: [aGregorianDate previousDay: GregorianCalendar monday]
		ifFalse: [aGregorianDate]