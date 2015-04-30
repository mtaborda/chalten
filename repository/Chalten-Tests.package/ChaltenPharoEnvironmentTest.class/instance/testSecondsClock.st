test accessing time
testSecondsClock

	| first second |
	first := environment secondsClock.
	(Delay forMilliseconds: 1) wait.
	second := environment secondsClock.
	self assert: first = (second - (second -first))