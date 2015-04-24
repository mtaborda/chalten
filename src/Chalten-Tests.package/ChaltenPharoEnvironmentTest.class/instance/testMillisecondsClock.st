test accessing time
testMillisecondsClock

	| first second |
	first := environment millisecondsClock.
	(Delay forMilliseconds: 1) wait.
	second := environment millisecondsClock.
	self assert: first = (second - (second -first))