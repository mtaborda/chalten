test enumerating
testAdd
	| time |
	time := TimeOfDay firstTimeOfDay.
	self assert: (time next: 1 hourMeasure) timeFromMidnight = 1 hourMeasure.
	self assert: (time next: 1 minuteMeasure) timeFromMidnight = 1 minuteMeasure.
	self assert: (time next: 1 secondMeasure) timeFromMidnight = 1 secondMeasure.
	self assert: (time next: 1 millisecondMeasure) timeFromMidnight = 1 millisecondMeasure