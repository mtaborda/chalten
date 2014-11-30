test interval protocol
testTo

	| interval |

	interval := yomRishon to: yomShabbat.
	self assert: interval from = yomRishon.
	self assert: interval to = yomShabbat.
	self assert: interval by = oneDay.
	self assert: interval size = 7