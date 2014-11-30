test dates accessing
testNow
	| now nowInTwoSeconds |
	now := JulianCalendar now.
	(Delay forSeconds: 1) wait.
	nowInTwoSeconds := JulianCalendar now.
	self assert: now < nowInTwoSeconds.
	self assert: ((now distanceTo: nowInTwoSeconds) convertTo: TimeUnits second) truncated = 1 secondMeasure