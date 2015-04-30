test instance creation
testInvalidCreation

	self 
		should: [ TimeOfDay timeFromMidnight: 24 hoursMeasure ] 
		raise: InvalidTimeOfDayException
		withExceptionDo: [:anException |
			self assert: anException description = 'The time 24 hours is invalid for one day' ].
		
	self 
		should: [ TimeOfDay timeFromMidnight: -1 millisecondMeasure ] 
		raise: InvalidTimeOfDayException
		withExceptionDo: [:anException |
			self assert: anException description = 'The time -1 millisecond is invalid for one day' ]