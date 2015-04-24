test instance creation
testCreationMilliseconds

	| time |
	
	time := TimeOfDay hours: 1 minutes: 1 seconds: 1 milliseconds: 1.
	
	self assert: time hours = 1 hourMeasure.
	self assert: time minutes = 1 minuteMeasure.
	self assert: time seconds = 1 secondMeasure.
	self assert: time milliseconds = 1 millisecondMeasure
