instance creation
timeFromMidnight: aTimeMeasure 

	(aTimeMeasure < 0 hoursMeasure or: [ aTimeMeasure >= 24 hoursMeasure ]) 
		ifTrue: [ InvalidTimeOfDayException signalTime: aTimeMeasure ].
	
	^self new initializeTimeFromMidnight: aTimeMeasure