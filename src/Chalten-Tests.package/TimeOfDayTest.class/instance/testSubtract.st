test enumerating
testSubtract
	| time |
	time := TimeOfDay hours: 1.
	self assert: (time previous: 1 hourMeasure) timeFromMidnight = 0 hoursMeasure.
	self assert: (time previous: 1 minuteMeasure) timeFromMidnight = 59 minutesMeasure.
	self assert: (time previous: 1 secondMeasure) timeFromMidnight = (59 * 60 + 59) secondsMeasure.
	self assert: (time previous: 1 millisecondMeasure) timeFromMidnight = (59 * 60000 + 59999) millisecondsMeasure