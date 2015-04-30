test interval protocol
testTo

	| interval |

	interval := yaumAlAhad to: yaumAsSabt.
	self assert: interval from = yaumAlAhad.
	self assert: interval to = yaumAsSabt.
	self assert: interval by = oneDay.
	self assert: interval size = 7