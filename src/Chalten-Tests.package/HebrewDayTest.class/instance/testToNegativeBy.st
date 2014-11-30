test interval protocol
testToNegativeBy

	| interval |

	interval := yomRishon to: yomSheni by: minusOneDay.
	self assert: interval from = yomRishon.
	self assert: interval to = yomSheni.
	self assert: interval by = minusOneDay.
	self assert: interval size = 7