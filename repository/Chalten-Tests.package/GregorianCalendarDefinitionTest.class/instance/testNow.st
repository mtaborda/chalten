test dates accessing
testNow
	| now nowInTwoSeconds |
	now := GregorianCalendar now.
	(Delay forSeconds: 1) wait.
	nowInTwoSeconds := GregorianCalendar now.
	self assert: now < nowInTwoSeconds.
	self assert: ((now distanceTo: nowInTwoSeconds) convertTo: TimeUnits second) truncated = 1 secondMeasure