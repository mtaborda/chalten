test interval protocol
testTo

	| interval |

	interval := sunday to: saturday.
	self assert: interval from = sunday.
	self assert: interval to = saturday.
	self assert: interval by = oneDay.
	self assert: interval size = 7