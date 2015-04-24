test accessing time
testMicrosecondsClock

	| first second |
	first := environment microsecondsClock.
	(Delay forMilliseconds: 1) wait.
	second := environment microsecondsClock.
	self assert: first = (second - (second -first))