test interval protocol
test30OfAdarIToEveryDayOfMonth

	| dates |

	dates := AdarI thirtieth, 5768 to: Tishri first, 5775 everyDayOfMonth: AdarI thirtieth.

	self assert: dates size = 3.
	self assert: (dates includes: AdarI thirtieth, 5768).
	self assert: (dates includes: AdarI thirtieth, 5771).
	self assert: (dates includes: AdarI thirtieth, 5774)