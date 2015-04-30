test dates accessing
testNow
	| now nowInOneSecond |
	now := IslamicCalendar now.
	(Delay forSeconds: 1) wait.
	nowInOneSecond := IslamicCalendar now.
	self assert: now < nowInOneSecond.
	self assert: ((now distanceTo: nowInOneSecond) convertTo: TimeUnits second) truncated = 1 secondMeasure