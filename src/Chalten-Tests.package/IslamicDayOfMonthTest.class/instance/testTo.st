test interval protocol
testTo

	| interval |

	interval := Muharram first to: Muharram tenth.
	self assert: interval from = Muharram first.
	self assert: interval to = Muharram tenth.
	self assert: interval by = oneDay