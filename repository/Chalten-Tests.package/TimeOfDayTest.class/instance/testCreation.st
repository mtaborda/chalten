test instance creation
testCreation

	| time |
	
	time := TimeOfDay timeFromMidnight: 0 hoursMeasure.
	
	self assert: time hours = 0 hoursMeasure.
	self assert: time minutes = 0 minutesMeasure.
	self assert: time seconds = 0 secondsMeasure.
	self assert: time milliseconds = 0 millisecondMeasure
