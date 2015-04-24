test interval protocol
test30OfDhuAlHijjaToEveryDayOfMonth

	| dates |

	dates := DhuAlHijja thirtieth, 1428 to: Muharram first, 1435 everyDayOfMonth: DhuAlHijja thirtieth.

	self assert: dates size = 3.
	self assert: (dates includes: DhuAlHijja thirtieth, 1428).
	self assert: (dates includes: DhuAlHijja thirtieth, 1431).
	self assert: (dates includes: DhuAlHijja thirtieth, 1434)