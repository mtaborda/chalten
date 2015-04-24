test interval protocol
testToEveryDayNumbers

	| dates1 dates2 |

	dates1 := relativeDate to: January thirtyfirst, 2004 everyDayNumbers: (Array with: 15 with: 20).
	dates2 := absoluteDate to: January thirtyfirst, 2004 everyDayNumbers: (Array with: 15 with: 20).
	self assert: dates1 = dates2