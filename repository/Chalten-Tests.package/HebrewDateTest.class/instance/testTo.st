test interval protocol
testTo

	| interval |

	interval := Nisan first, 5767 to: Nisan tenth, 5767.

	self assert: interval from = (Nisan first, 5767).
	self assert: interval to = (Nisan tenth, 5767).
	self assert: interval by = self oneDay