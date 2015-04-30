test interval protocol
testToNegativeBy

	| interval |

	interval := sunday to: monday by: minusOneDay.
	self assert: interval from = sunday.
	self assert: interval to = monday.
	self assert: interval by = minusOneDay.
	self assert: interval size = 7