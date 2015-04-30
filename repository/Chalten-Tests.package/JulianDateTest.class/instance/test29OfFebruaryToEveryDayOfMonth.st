test interval protocol
test29OfFebruaryToEveryDayOfMonth

	| dates |

	dates := JulianOctober first, 2003 to: JulianMarch first, 2009 everyDayOfMonth: JulianFebruary twentyninth.
	self assert: dates size = 2.
	self assert: (dates includes: JulianFebruary twentyninth, 2004).
	self assert: (dates includes: JulianFebruary twentyninth, 2008)