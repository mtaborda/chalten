test interval protocol
testTo
	| interval |
	interval := januaryFirstOf2004 to: januarySecondOf2004.
	self assert: interval from = januaryFirstOf2004.
	self assert: interval to = januarySecondOf2004.
	self assert: interval by = 1 secondMeasure