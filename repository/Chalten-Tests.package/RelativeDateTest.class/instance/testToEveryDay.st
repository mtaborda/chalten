test interval protocol
testToEveryDay

	| dates1 dates2 |

	dates1 := relativeDate to: January thirtyfirst, 2004 everyDay: GregorianCalendar monday.
	dates2 := absoluteDate to: January thirtyfirst, 2004 everyDay: GregorianCalendar monday.
	self assert: dates1 = dates2