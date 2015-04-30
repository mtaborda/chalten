test interval protocol
testToEveryDayOfMonth

	| dates |

	dates := January tenth, 2007 to: January ninth, 2009 everyDayOfMonth: January tenth.
	self assert: dates size = 2.
	self assert: (dates includes: January tenth, 2007).
	self assert: (dates includes: January tenth, 2008).

	dates := January tenth, 2007 to: January tenth, 2009 everyDayOfMonth: January tenth.
	self assert: (dates includes: January tenth, 2007).
	self assert: (dates includes: January tenth, 2008).
	self assert: (dates includes: January tenth, 2009)