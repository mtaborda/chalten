test dates accessing
testNow
	| now nowInOneSecond |
	now := HebrewCalendar now.
	(Delay forSeconds: 1) wait.
	nowInOneSecond := HebrewCalendar now.
	self assert: now < nowInOneSecond.
	self assert: ((now distanceTo: nowInOneSecond) convertTo: TimeUnits second) truncated = 1 secondMeasure