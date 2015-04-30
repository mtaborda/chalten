test interval protocol
testToEveryDayOfMonth

	| dates |

	dates := Nisan tenth, 5767 to: Nisan ninth, 5769 everyDayOfMonth: Nisan tenth.

	self assert: dates size = 2.
	self assert: (dates includes: Nisan tenth, 5767).
	self assert: (dates includes: Nisan tenth, 5768).

	dates := Nisan tenth, 5767 to: Nisan tenth, 5769 everyDayOfMonth: Nisan tenth.

	self assert: dates size = 3.
	self assert: (dates includes: Nisan tenth, 5767).
	self assert: (dates includes: Nisan tenth, 5768).
	self assert: (dates includes: Nisan tenth, 5769)