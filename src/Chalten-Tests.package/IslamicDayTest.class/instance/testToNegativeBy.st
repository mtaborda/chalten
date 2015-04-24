test interval protocol
testToNegativeBy

	| interval |

	interval := yaumAlAhad to: yaumAlIthnayna by: minusOneDay.
	self assert: interval from = yaumAlAhad.
	self assert: interval to = yaumAlIthnayna.
	self assert: interval by = minusOneDay.
	self assert: interval size = 7