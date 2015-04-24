test instance creation
testCreationHour

	| time |
	
	time := TimeOfDay hours: 1.
	
	self assert: time hours = 1 hourMeasure.
	self assert: time minutes = 0 minutesMeasure.
	self assert: time seconds = 0 secondsMeasure.
	self assert: time milliseconds = 0 millisecondsMeasure