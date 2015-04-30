test interval protocol
testToEveryDayNumber

	| dates1 dates2 |

	dates1 := relativeDate to: January thirtyfirst, 2004 everyDayNumber: 15.
	dates2 := absoluteDate to: January thirtyfirst, 2004 everyDayNumber: 15.
	self assert: dates1 = dates2