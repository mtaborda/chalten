test interval protocol
testTo

	| interval |

	interval := Muharram first, 1428 to: Muharram tenth, 1428.

	self assert: interval from = (Muharram first, 1428).
	self assert: interval to = (Muharram tenth, 1428).
	self assert: interval by = self oneDay