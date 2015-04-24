test instance creation
testCreationMinute

	| time |
	
	time := TimeOfDay hours: 1 minutes: 1.
	
	self assert: time hours = 1 hourMeasure.
	self assert: time minutes = 1 minuteMeasure.
	self assert: time seconds = 0 secondsMeasure.
	self assert: time milliseconds = 0 millisecondsMeasure
