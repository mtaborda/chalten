test interval protocol
testToBy

	| interval |

	interval := January, 2004 to: March, 2004 by: twoMonths.
	self assert: interval from = (January, 2004).
	self assert: interval to = (March, 2004).
	self assert: interval by = twoMonths