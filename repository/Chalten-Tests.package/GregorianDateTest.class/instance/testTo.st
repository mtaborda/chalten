test interval protocol
testTo

	| interval |

	interval := January first, 2007 to: January tenth, 2007.
	self assert: interval from = (January first, 2007).
	self assert: interval to = (January tenth, 2007).
	self assert: interval by = self oneDay