querying - private
goToNextMondayIfNeeded: aGregorianDate

	^(self mustGoToNextMonday: aGregorianDate)
		ifTrue: [aGregorianDate nextDay: GregorianCalendar monday]
		ifFalse: [aGregorianDate]