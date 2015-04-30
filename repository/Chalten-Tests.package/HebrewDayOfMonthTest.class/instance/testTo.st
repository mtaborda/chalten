test interval protocol
testTo

	| interval |

	interval := Nisan first to: Nisan tenth.
	self assert: interval from = Nisan first.
	self assert: interval to = Nisan tenth.
	self assert: interval by = oneDay