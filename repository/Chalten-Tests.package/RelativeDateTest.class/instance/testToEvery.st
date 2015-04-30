test interval protocol
testToEvery

	| dates1 dates2 |

	dates1 := relativeDate to: January thirtyfirst, 2004 every: (Array with: GregorianCalendar monday with: GregorianCalendar tuesday).
	dates2 := absoluteDate to: January thirtyfirst, 2004 every: (Array with: GregorianCalendar monday with: GregorianCalendar tuesday).
	self assert: dates1 = dates2