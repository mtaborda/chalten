test interval protocol
testToEveryDayOfMonth

	| dates |

	dates := Muharram tenth, 1428 to: Muharram ninth, 1430 everyDayOfMonth: Muharram tenth.

	self assert: dates size = 2.
	self assert: (dates includes: Muharram tenth, 1428).
	self assert: (dates includes: Muharram tenth, 1429).

	dates := Muharram tenth, 1428 to: Muharram tenth, 1430 everyDayOfMonth: Muharram tenth.

	self assert: dates size = 3.
	self assert: (dates includes: Muharram tenth, 1428).
	self assert: (dates includes: Muharram tenth, 1429).
	self assert: (dates includes: Muharram tenth, 1430)