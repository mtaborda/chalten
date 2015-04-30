test interval protocol
test29OfFebruaryToEveryDayOfMonth

	| dates |

	dates := October first, 2003 to: March first, 2009 everyDayOfMonth: February twentyninth.
	self assert: dates size = 2.
	self assert: (dates includes: February twentyninth, 2004).
	self assert: (dates includes: February twentyninth, 2008)