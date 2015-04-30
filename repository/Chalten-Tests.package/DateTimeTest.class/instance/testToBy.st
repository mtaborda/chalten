test interval protocol
testToBy

	| interval |

	interval := januaryFirstOf2004 to: januarySecondOf2004 by: 1 hourMeasure.
	self assert: interval from = januaryFirstOf2004.
	self assert: interval to = januarySecondOf2004.
	self assert: interval by = 1 hourMeasure